{
  plugins.yanky = {
    enable = true;
    settings = {
      ring.storage = "memory";
      highlight.timer = 150;
    };
  };

  keymaps = [
    {
      mode = ["n" "x"];
      key = "y";
      action = "<Plug>(YankyYank)";
      options.desc = "Yank Text";
    }
    {
      mode = ["n" "x"];
      key = "p";
      action = "<Plug>(YankyPutAfter)";
      options.desc = "Put Text After Cursor";
    }
    {
      mode = ["n" "x"];
      key = "<c-p>";
      action = "<Plug>(YankyPreviousEntry)";
    }
    {
      mode = ["n" "x"];
      key = "<c-n>";
      action = "<Plug>(YankyNextEntry)";
    }
  ];
}
