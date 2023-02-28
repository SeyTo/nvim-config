return {
  go = {
    type = "server",
    port = 12314,
    executable = {
      command = "dlv",
      args = { "dap", "-l", "127.0.0.1:" .. 12314 },
    },
    options = {
      initialize_timeout_sec = 20,
    },
  },
}
