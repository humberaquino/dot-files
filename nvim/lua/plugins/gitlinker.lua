return {
  {
    "ruifm/gitlinker.nvim",
    dependecies = { "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<leader>gy",
        '<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".copy_to_clipboard})<cr>',
        desc = "Git links to clipboard",
      },
      {
        "<leader>gb",
        '<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".open_in_browser})<cr>',
        desc = "Git links to browser",
      },
    },
  },
}
