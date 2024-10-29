return {
    {
    "Diogo-ss/42-header.nvim",
    opts = {
      ---Max header size (not recommended change).
      --length = 80,
      ---Header margin (not recommended change).
      --margin = 5,
      ---Activate default mapping (e.g. F1).
      default_map = true,
      ---Enable auto-update of headers.
      auto_update = true,
      ---Default user.name.
      user = "znajdaou",
      ---Default user.email.
      mail = "znajdaou@student.1337.ma",
      ---ASCII art.
      --asciiart = { "---", "---", ... },
      ---Git config.
      git = {
        ---Enable Git support.
        enabled = false,
        ---PATH to the Git binary.
        bin = "git",
        ---Use global user.name, otherwise use local user.name.
        user_global = true,
        ---Use global user.email, otherwise use local user.email.
        email_global = true,
      },
    },
  },
}
