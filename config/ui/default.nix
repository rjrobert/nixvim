{
  imports = [
    ./bufferline.nix
    ./colorscheme.nix
    ./lualine.nix
    ./noice.nix
  ];

  plugins = {
    nui.enable = true;
  };
}
