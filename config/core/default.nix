{
  imports = [
    ./options.nix
    ./keymaps.nix
    ./autocmds.nix
  ];

  plugins.lz-n.enable = true;

  diagnostic.settings = {
    underline = true;
    update_in_insert = true;
    virtual_text = {
      spacing = 4;
      source = "if_many";
      prefix = "●";
    };
    severity_sort = true;
    signs = {
      text = {
        "__rawKey__vim.diagnostic.severity.ERROR" = " ";
        "__rawKey__vim.diagnostic.severity.WARN" = " ";
        "__rawKey__vim.diagnostic.severity.HINT" = " ";
        "__rawKey__vim.diagnostic.severity.INFO" = " ";
      };
    };
  };
}
