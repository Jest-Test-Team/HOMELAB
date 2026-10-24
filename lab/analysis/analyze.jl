#!/usr/bin/env julia
# Analyse HOMELAB lab-evidence markdown into a trend report + machine summary.
#
#   julia --project=lab/analysis lab/analysis/analyze.jl <evidence_dir> <out_dir>
#
# Parses each *.md run: title, timestamp, the | ... | verdict tables (PASS/FAIL/WARN),
# and ## FINDING / ## REMEDIATION sections. Writes <out_dir>/{summary.json,report.md}.
# No external packages (runs on base Julia). Prints only non-sensitive progress —
# never the evidence content — so it is safe in public CI logs.

using Dates

# ----- tiny JSON writer (strings/ints/floats/bools/arrays/dicts) -----------
jesc(s::AbstractString) = replace(String(s), '\\'=>"\\\\", '"'=>"\\\"", '\n'=>"\\n", '\r'=>"\\r", '\t'=>"\\t")
tojson(x::AbstractString) = string('"', jesc(x), '"')
tojson(x::Bool) = x ? "true" : "false"
tojson(x::Integer) = string(x)
tojson(x::AbstractFloat) = isnan(x) ? "null" : string(round(x; digits=4))
tojson(x::Nothing) = "null"
tojson(x::AbstractVector) = string("[", join(map(tojson, x), ","), "]")
function tojson(x::AbstractDict)
    parts = String[]
    for k in keys(x)
        push!(parts, string('"', jesc(string(k)), '"', ":", tojson(x[k])))
    end
    string("{", join(parts, ","), "}")
end

# ----- parsing -------------------------------------------------------------
const TS_RE = r"\d{4}-\d{2}-\d{2}(?:T\d{2}:\d{2}(?::\d{2})?Z?)?"

struct Run
    file::String
    title::String
    stamp::String
    pass::Int
    fail::Int
    warn::Int
    rows::Int
    findings::Int
    remediations::Int
end

function verdict_of(row::AbstractString)
    occursin(r"\bFAIL\b", row) && return :fail
    occursin(r"\bWARN\b", row) && return :warn
    occursin(r"\bPASS\b", row) && return :pass
    return :none
end

function parse_run(path::String)::Run
    lines = readlines(path)
    title = ""
    for l in lines
        if startswith(l, "# ")
            title = strip(l[3:end]); break
        end
    end
    # first timestamp anywhere in the first ~15 lines, else anywhere
    stamp = ""
    for l in Iterators.take(lines, 15)
        m = match(TS_RE, l); if m !== nothing; stamp = m.match; break; end
    end
    if stamp == ""
        for l in lines
            m = match(TS_RE, l); if m !== nothing; stamp = m.match; break; end
        end
    end
    p = f = w = rows = 0
    findings = remediations = 0
    for l in lines
        s = strip(l)
        if startswith(s, "|") && !occursin(r"^\|[\s:|-]+\|?$", s) && !occursin("| Test ", l) &&
           !occursin("| Check ", l) && !occursin("|---", s)
            # data row of a table (skip header + separator). Header heuristic: a row
            # whose cells are column names has no verdict token, so verdict_of = none.
            v = verdict_of(l)
            if v != :none
                rows += 1
                v === :pass && (p += 1)
                v === :fail && (f += 1)
                v === :warn && (w += 1)
            end
        end
        occursin(r"^##\s*FINDING"i, s) && (findings += 1)
        occursin(r"^##\s*REMEDIATION"i, s) && (remediations += 1)
    end
    Run(basename(path), title, stamp, p, f, w, rows, findings, remediations)
end

# ----- main ----------------------------------------------------------------
function main()
    length(ARGS) >= 2 || (println(stderr, "usage: analyze.jl <evidence_dir> <out_dir>"); exit(2))
    evdir, outdir = ARGS[1], ARGS[2]
    isdir(evdir) || (println(stderr, "no such dir: $evdir"); exit(2))
    mkpath(outdir)

    files = sort(filter(f -> endswith(f, ".md"), readdir(evdir; join=true)))
    runs = Run[parse_run(f) for f in files]
    println("parsed $(length(runs)) run(s) from $evdir")

    tp = sum(r.pass for r in runs; init=0)
    tf = sum(r.fail for r in runs; init=0)
    tw = sum(r.warn for r in runs; init=0)
    tfind = sum(r.findings for r in runs; init=0)
    trem  = sum(r.remediations for r in runs; init=0)
    decided = tp + tf
    hold = decided == 0 ? 1.0 : tp / decided
    open_findings = max(0, tfind - trem)
    generated = Dates.format(now(UTC), dateformat"yyyy-mm-ddTHH:MM:SSZ")

    # summary.json
    runs_json = [Dict("file"=>r.file, "title"=>r.title, "timestamp"=>r.stamp,
                      "pass"=>r.pass, "fail"=>r.fail, "warn"=>r.warn,
                      "verdict_rows"=>r.rows, "findings"=>r.findings,
                      "remediations"=>r.remediations) for r in runs]
    summary = Dict(
        "generated"=>generated, "runs"=>length(runs),
        "totals"=>Dict("pass"=>tp, "fail"=>tf, "warn"=>tw,
                       "findings"=>tfind, "remediations"=>trem, "open_findings"=>open_findings),
        "control_hold_rate"=>hold, "per_run"=>runs_json)
    open(joinpath(outdir, "summary.json"), "w") do io
        println(io, tojson(summary))
    end

    # report.md
    open(joinpath(outdir, "report.md"), "w") do io
        println(io, "# HOMELAB lab-evidence analysis")
        println(io)
        println(io, "_Generated $generated from $(length(runs)) evidence run(s)._")
        println(io)
        println(io, "## Summary")
        println(io)
        println(io, "- Verdicts: **$tp PASS**, **$tf FAIL**, **$tw WARN** across $(tp+tf+tw) decided checks.")
        println(io, "- Control-hold rate: **$(round(hold*100; digits=1))%** (PASS / (PASS+FAIL)).")
        println(io, "- Findings: **$tfind opened**, **$trem remediated**, **$open_findings open**.")
        println(io)
        println(io, "## Per run")
        println(io)
        println(io, "| Run | When | PASS | FAIL | WARN | Findings | Remediations |")
        println(io, "|---|---|---:|---:|---:|---:|---:|")
        for r in runs
            when = isempty(r.stamp) ? "?" : r.stamp
            println(io, "| $(r.file) | $when | $(r.pass) | $(r.fail) | $(r.warn) | $(r.findings) | $(r.remediations) |")
        end
        println(io)
        if tf > 0
            println(io, "> ⚠️ $tf FAIL verdict(s) recorded — review the raw evidence for the failing checks.")
        elseif open_findings > 0
            println(io, "> ⚠️ $open_findings finding(s) opened without a matching remediation section.")
        else
            println(io, "> ✅ All decided checks held and every finding has a remediation.")
        end
    end
    println("wrote summary.json and report.md to $outdir (open findings: $open_findings)")
end

main()
