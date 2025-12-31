{
  plugins.trouble = {
    enable = true;
    settings = {
      auto_close = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>cd";
      action.__raw = "function() vim.diagnostic.open_float() end";
      options.desc = "Line Diagnostics";
    }
    {
      mode = "n";
      key = "[d";
      action.__raw = "function() vim.diagnostic.goto_next() end";
      options.desc = "Next Diagnostic";
    }
    {
      mode = "n";
      key = "]d";
      action.__raw = "function() vim.diagnostic.goto_prev() end";
      options.desc = "Previous Diagnostic";
    }
    {
      mode = "n";
      key = "<leader>xx";
      action = "<cmd>Trouble diagnostics toggle<cr>";
      options.desc = "Diagnostics (Trouble)";
    }
    {
      mode = "n";
      key = "<leader>xX";
      action = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>";
      options.desc = "Buffer Diagnostics";
    }
    {
      mode = "n";
      key = "<leader>cs";
      action = "<cmd>Trouble symbols toggle focus=false<cr>";
      options.desc = "Symbols (Trouble)";
    }
  ];
}
