{
  lib,
  pkgs,
  ...
}: {
  lsp.servers.nil_ls.enable = true;

  plugins = {
    conform-nvim.settings = {
      formatters_by_ft = {
        nix = ["alejandra"];
      };
      formatters = {
        alejandra = {
          command = "${lib.getExe pkgs.alejandra}";
        };
        nixfmt = {
          command = "${lib.getExe pkgs.nixfmt}";
        };
      };
    };

    lint.lintersByFt = {
      nix = ["statix"];
    };
  };

  extraPackages = with pkgs; [
    statix
  ];
}
