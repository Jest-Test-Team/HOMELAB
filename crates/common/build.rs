// GIT_SHA is baked in at build time (Dockerfile ARG); rebuild when it changes.
fn main() {
    println!("cargo:rerun-if-env-changed=GIT_SHA");
}
