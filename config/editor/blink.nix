{
  plugins = {
    blink-cmp = {
      enable = true;
      setupLspCapabilities = true;

      settings = {
        signature = {
          enabled = true;
          window.border = "rounded";
        };

        sources = {
          default = [
            "lsp"
            "path"
            "snippets"
            "buffer"
          ];
        };

        appearance.nerd_font_variant = "mono";

        completion = {
          accept.auto_brackets.enabled = true;
          menu.draw.treesitter = ["lsp"];
          documentation = {
            auto_show = true;
            auto_show_delay_ms = 200;
          };
          ghost_text.enabled = true;
        };

        cmdline = {
          enabled = true;
          keymap.preset = "cmdline";
          completion = {
            list.selection.preselect = false;
            ghost_text.enabled = true;
            menu.auto_show.__raw =
              #lua
              ''
                function(ctx)
                  return vim.fn.getcmdtype() == ':'
                end
              '';
          };
        };
      };
    };

    friendly-snippets.enable = true;

    blink-compat = {
      enable = true;
    };
  };
}
