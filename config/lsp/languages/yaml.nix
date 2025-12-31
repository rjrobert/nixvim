{
  lib,
  pkgs,
  ...
}: {
  lsp.servers.yamlls.enable = true;

  plugins = {
    conform-nvim.settings = {
      formatters_by_ft = {
        yaml = {
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
      };
      formatters = {
        prettierd = {
          command = "${lib.getExe pkgs.prettierd}";
        };
      };
    };
  };

  extraPackages = with pkgs; [
    prettierd
  ];
}
