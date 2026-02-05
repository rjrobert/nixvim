{...}: {
  plugins = {
    treesitter = {
      enable = true;
      highlight.enable = true;
      indent.enable = true;
      folding.enable = true;
    };

    ts-autotag.enable = true;
    ts-context-commentstring.enable = true;
    ts-comments.enable = true;
  };
}
