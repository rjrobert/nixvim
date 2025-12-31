{...}: {
  lsp = {
    inlayHints.enable = true;
    servers = {
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
  };
}
