{pkgs, ...}: {
  imports = [
    ./core
    ./editor
    ./lsp
    ./ui
    ./utilities
  ];

  extraPackages = with pkgs; [
    fortune-kind
  ];
}
