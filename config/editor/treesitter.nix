{
  plugins = {
    treesitter = {
      enable = true;
      highlight.enable = true;
      indent.enable = true;
      folding.enable = true;
      settings = {
        highlight.additional_vim_regex_highlighting = false;
      };
    };

    treesitter-textobjects = {
      enable = true;
      settings = {
        select = {
          enable = true;
          lookahead = true;
          keymaps = {
            "af" = "@function.outer";
            "if" = "@function.inner";
            "ac" = "@class.outer";
            "ic" = "@class.inner";
          };
        };
        move = {
          enable = true;
          gotoNextStart = {
            "]f" = "@function.outer";
            "]c" = "@class.outer";
          };
          gotoPreviousStart = {
            "[f" = "@function.outer";
            "[c" = "@class.outer";
          };
        };
      };
    };

    ts-autotag.enable = true;
    ts-context-commentstring.enable = true;
    ts-comments.enable = true;
  };
}
