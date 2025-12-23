{...}: {
  plugins.bufferline = {
    enable = true;
    settings = {
      highlights.__raw = ''require("catppuccin.special.bufferline").get_theme()'';
      options = {
        diagnostics = "nvim_lsp";
        always_show_bufferline = false;
        offsets = [
          {
            filetype = "neo-tree";
            text = "Neo-tree";
            highlight = "Directory";
            text_align = "left";
          }
          {
            filetype = "snacks_layout_box";
          }
        ];
      };
    };
  };
}
