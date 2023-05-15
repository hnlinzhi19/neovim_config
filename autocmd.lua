vim.api.nvim_create_augroup("im-select", { clear = true })

vim.api.nvim_create_autocmd({ "VimEnter", "FocusGained", "InsertLeave", "CmdlineLeave" }, {
  group = "im-select", -- add the autocmd to the newly created augroup
  callback = function()
    vim.fn.system({ "im-select", "com.apple.keylayout.ABC" });
  end,
})
