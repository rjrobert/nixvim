{
  plugins.which-key = {
    enable = true;
    settings = {
      preset = "helix";
      spec = [
        {
          mode = ["n" "x"];
          __unkeyed-1 = [
            {
              __unkeyed-1 = "<leader>f";
              group = "files";
            }
            {
              __unkeyed-1 = "<leader>b";
              group = "buffers";
            }
            {
              __unkeyed-1 = "<leader>c";
              group = "code";
            }
            {
              __unkeyed-1 = "<leader>g";
              group = "git";
            }
            {
              __unkeyed-1 = "<leader>s";
              group = "search";
            }
            {
              __unkeyed-1 = "<leader>w";
              group = "windows";
            }
            {
              __unkeyed-1 = "<leader><tab>";
              group = "tabs";
            }
            {
              __unkeyed-1 = "<leader>x";
              group = "diagnostics";
            }
            {
              __unkeyed-1 = "<leader>q";
              group = "session";
            }
            {
              __unkeyed-1 = "<leader>u";
              group = "ui";
            }
          ];
        }
      ];
    };
  };
}
