{
  imports = [
    ./bufferline.nix
    ./colorscheme.nix
    ./lualine.nix
    ./noice.nix
  ];

  plugins = {
    web-devicons.enable = true;
    nui.enable = true;
  };
}
