{...}: let
  importDir = dir: let
    files = builtins.attrNames (builtins.readDir dir);
  in
    map (f: dir + "/${f}") (builtins.filter (f: builtins.match ".*\\.nix" f != null) files);
in {
  imports =
    [
      ./lspconfig.nix
      ./conform.nix
    ]
    ++ importDir ./languages;

  plugins.lint.enable = true;
}
