# containerd's default container profile (contrib/apparmor/template.go), plus
# one rule for kernels that STACK it with the parent label.
#
# Why: with no_new_privs (allowPrivilegeEscalation: false), AppArmor cannot
# switch an unconfined process to this profile, so it stacks them. Container
# processes are then labelled "cri-containerd.apparmor.d//&unconfined", which
# the stock "signal peer=cri-containerd.apparmor.d" rule does not match, and
# processes inside one container cannot signal each other. PostgreSQL then
# hangs (its backends wake each other with SIGURG), and Go binaries spin.
# Seen on Ubuntu 26.10, kernel 7.3, AppArmor 6.0 alpha, k3s v1.36.5.
#
# containerd only generates and loads its own copy when no profile with this
# name is loaded, so installing this file in /etc/apparmor.d (loaded at boot,
# before k3s) makes it take precedence. To undo: delete the file, then
# `sudo apparmor_parser -R` it and restart k3s.
#include <tunables/global>

profile cri-containerd.apparmor.d flags=(attach_disconnected,mediate_deleted) {
  #include <abstractions/base>

  network,
  capability,
  file,
  umount,

  # Host (privileged) processes may send signals to container processes.
  signal (receive) peer=unconfined,
  # Container processes may send signals amongst themselves.
  signal (send,receive) peer=cri-containerd.apparmor.d,
  # homelab addition: the same, for the stacked label.
  signal (send,receive) peer=cri-containerd.apparmor.d//&unconfined,

  deny @{PROC}/* w,   # deny write for all files directly in /proc (not in a subdir)
  # deny write to files not in /proc/<number>/** or /proc/sys/**
  deny @{PROC}/{[^1-9],[^1-9][^0-9],[^1-9s][^0-9y][^0-9s],[^1-9][^0-9][^0-9][^0-9/]*}/** w,
  deny @{PROC}/sys/[^k]** w,  # deny /proc/sys except /proc/sys/k* (effectively /proc/sys/kernel)
  deny @{PROC}/sys/kernel/{?,??,[^s][^h][^m]**} w,  # deny everything except shm* in /proc/sys/kernel/
  deny @{PROC}/sysrq-trigger rwklx,
  deny @{PROC}/kcore rwklx,

  deny mount,

  deny /sys/[^f]*/** wklx,
  deny /sys/f[^s]*/** wklx,
  deny /sys/fs/[^c]*/** wklx,
  deny /sys/fs/c[^g]*/** wklx,
  deny /sys/fs/cg[^r]*/** wklx,
  deny /sys/firmware/** rwklx,
  deny /sys/devices/virtual/powercap/** rwklx,
  deny /sys/kernel/security/** rwklx,

  # suppress ptrace denials when using 'ps' inside a container
  ptrace (trace,read,tracedby,readby) peer=cri-containerd.apparmor.d,
}
