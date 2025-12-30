{
  plugins.flash = {
    enable = true;
  };

  keymaps = [
    {
      mode = ["n" "x" "o"];
      key = "s";
      action.__raw =
        #lua
        "function() require('flash').jump() end";
      options.desc = "Flash";
    }
    {
      mode = ["n" "x" "o"];
      key = "S";
      action.__raw =
        #lua
        "function() require('flash').treesitter() end";
      options.desc = "Flash Treesitter";
    }
    {
      mode = ["n" "x" "o"];
      key = "<c-space>";
      action.__raw =
        #lua
        ''
          function()
            require('flash').treesitter({
              actions = {
                ["<c-space>"]="next",
                ["<BS>"]="prev",
              }
            })
          end
        '';
      options.desc = "Treesitter Incremental Search";
    }
  ];
}
