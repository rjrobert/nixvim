{
  imports = [
    ./bufferline.nix
    ./colorscheme.nix
    ./navic.nix
    ./lualine.nix
    ./noice.nix
  ];

  plugins = {
    nui.enable = true;
  };
}
