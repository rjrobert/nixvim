{...}: {
  lsp = {
    inlayHints.enable = true;
    servers = {
      nil_ls.enable = true;
      jsonls.enable = true;
      yamlls.enable = true;
    };

    keymaps = [
      {
        key = "gd";
        lspBufAction = "definition";
        options.desc = "Goto Definition";
      }
      {
        key = "gr";
        lspBufAction = "references";
        options.desc = "References";
      }
      {
        key = "gD";
        lspBufAction = "declaration";
        options.desc = "Goto Declaration";
      }
      {
        key = "gI";
        lspBufAction = "implementation";
        options.desc = "Goto Implementation";
      }
      {
        key = "gT";
        lspBufAction = "type_definition";
        options.desc = "Type Definition";
      }
      {
        key = "K";
        lspBufAction = "hover";
        options.desc = "Hover";
      }
      {
        key = "gK";
        lspBufAction = "signature_help";
        options.desc = "Signature Help";
      }
      {
        key = "<leader>cw";
        lspBufAction = "workspace_symbol";
        options.desc = "Workspace Symbol";
      }
      {
        key = "<leader>ca";
        lspBufAction = "code_action";
        options.desc = "Code Action";
      }
    ];
  };

  plugins = {
    lspconfig.enable = true;
    lsp-format.enable = true;
    lsp-lines.enable = true;

    trouble = {
      enable = true;
      settings = {
        auto_close = true;
      };
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
