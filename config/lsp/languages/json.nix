{
  lib,
  pkgs,
  ...
}: {
  lsp.servers.jsonls.enable = true;

  plugins = {
    conform-nvim.settings = {
      formatters_by_ft = {
        json = ["jq"];
      };
      formatters = {
        jq = {
          command = "${lib.getExe pkgs.jq}";
        };
      };
    };
  };

  extraPackages = with pkgs; [
    jq
  ];
}
