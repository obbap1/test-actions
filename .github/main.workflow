workflow "check-and-release" {
  on = "push"
  resolves = ["release"]
}

action "release" {
    uses = "appleboy/scp-action@master"
    secrets = ["HOST", "KEY_PATH", "KEY", "PORT", "USERNAME", "INPUT_STRIP_COMPONENTS", "TARGET", "SOURCE"]
}