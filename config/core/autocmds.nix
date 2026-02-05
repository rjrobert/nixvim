{...}: {
  autoCmd = [
    # Highlight on yank
    {
      event = "TextYankPost";
      callback.__raw =
        #lua
        ''
          function()
            vim.highlight.on_yank()
          end
        '';
    }
    # Resize splits on window resize
    {
      event = "VimResized";
      callback.__raw =
        #lua
        ''
          function()
            vim.cmd("tabdo wincmd =")
          end
        '';
    }
    # Go to last location when opening a buffer
    {
      event = "BufReadPost";
      callback.__raw =
        #lua
        ''
          function()
            local mark = vim.api.nvim_buf_get_mark(0, '"')
            local lcount = vim.api.nvim_buf_line_count(0)
            if mark[1] > 0 and mark[1] <= lcount then
              pcall(vim.api.nvim_win_set_cursor, 0, mark)
            end
          end
        '';
    }
    # Close some filetypes with q
    {
      event = "FileType";
      pattern = [
        "checkhealth"
        "gitsigns-blame"
        "grug-far"
        "help"
        "lspinfo"
        "neotest-output"
        "neotest-output-panel"
        "neotest-summary"
        "notify"
        "qf"
      ];
      callback.__raw =
        #lua
        ''
          function(event)
            vim.bo[event.buf].buflisted = false
            vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
          end
        '';
    }
  ];
}
