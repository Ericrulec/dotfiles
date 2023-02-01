local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup {
  options = {
    mode = "tabs",
    separator_style = "slant",
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = {
    separator = {
      fg = "#073642",
      bg = "#002b36"
    },
    separator_selected = {
      fg = "#073642"
    },
    background = {
      fg = "#657b83",
      _ = "bold"
    },
    fill = {
      bg = "#073642"
    }
  }
}

--vim.api.nvim_set_keymap("n", "<Tab>", "<cmd>BufferlineCycleNext<cr>", {})
--vim.api.nvim_set_keymap("n", "<S-Tab>", "<cmd>BufferlineCyclePrev<cr>", {})
vim.api.nvim_set_keymap("n", "<Tab>", ":tabn<cr>", {})
vim.api.nvim_set_keymap("n", "<S-Tab>", ":tabp<cr>", {})
