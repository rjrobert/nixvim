{
  plugins = {
    trouble = {
      enable = true;
      settings = {
        auto_close = true;
      };
    };

    todo-comments = {
      enable = true;
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
    {
      mode = "n";
      key = "<leader>xL";
      action = "<cmd>Trouble loclist toggle<cr>";
      options.desc = "Location List (Trouble)";
    }
    {
      mode = "n";
      key = "<leader>xQ";
      action = "<cmd>Trouble qflist toggle<cr>";
      options.desc = "Quickfix List (Trouble)";
    }
    {
      mode = "n";
      key = "[q";
      action.__raw =
        #lua
        ''
          function()
            if require("trouble").is_open() then
              require("trouble").prev({skip_groups = true, jump = true})
            else
              local ok, err = pcall(vim.cmd.cprev)
              if not ok then
                vim.notify(err, vim.log.levels.ERROR)
              end
            end
          end
        '';
      options.desc = "Previous Trouble/Quickfix Item";
    }
    {
      mode = "n";
      key = "]q";
      action.__raw =
        #lua
        ''
          function()
            if require("trouble").is_open() then
              require("trouble").next({skip_groups = true, jump = true})
            else
              local ok, err = pcall(vim.cmd.cnext)
              if not ok then
                vim.notify(err, vim.log.levels.ERROR)
              end
            end
          end
        '';
      options.desc = "Next Trouble/Quickfix Item";
    }

    # todo comments
    {
      mode = "n";
      key = "]t";
      action.__raw =
        #lua
        ''
          function()
              require("todo-comments").jump_next()
          end
        '';
      options.desc = "Next Todo Comment";
    }
    {
      mode = "n";
      key = "[t";
      action.__raw =
        #lua
        ''
          function()
              require("todo-comments").jump_prev()
          end
        '';
      options.desc = "Previous Todo Comment";
    }
    {
      mode = "n";
      key = "<leader>xt";
      action = "<cmd>Trouble todo toggle<cr>";
      options.desc = "Todo (Trouble)";
    }
    {
      mode = "n";
      key = "<leader>xT";
      action = "<cmd>Trouble todo toggle filter = {tag = {TODO,FIX,FIXME}}<cr>";
      options.desc = "Todo/Fix/Fixme (Trouble)";
    }
  ];
}
