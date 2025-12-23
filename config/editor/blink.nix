{
  plugins = {
    blink-cmp-dictionary.enable = true;
    blink-cmp-git.enable = true;
    blink-cmp-spell.enable = true;
    blink-copilot.enable = true;
    blink-emoji.enable = true;
    blink-ripgrep.enable = true;
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
            "buffer"
            "lsp"
            "path"
            "snippets"

            "copilot"
            "dictionary"
            "emoji"
            "git"
            "spell"
            "ripgrep"
          ];

          providers = {
            ripgrep = {
              name = "Ripgrep";
              module = "blink-ripgrep";
              score_offset = 1;
            };
          };
        };

        appearance.nerd_font_variant = "mono";

        completion = {
          documentation = {
            auto_show = true;
            auto_show_delay_ms = 200;
          };
          ghost_text.enabled = true;
        };
      };
    };
  };

  blink-compat = {
    enable = true;
  };
}
