{ ... }:
{
  colorschemes.tokyonight = {
    enable = false;
    settings = {
      style = "moon";
      transparent = false;
      terminal_colors = true;
      styles = {
        comments.italic = true;
        keywords.italic = true;
        sidebars = "dark";
        floats = "dark";
      };
    };
  };

  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "macchiato";
      transparent_background = false;
      float.transparent = true;
      term_colors = true;
      default_integrations = true;
      lsp_styles = {
        underlines = {
          errors = [ "undercurl" ];
          hints = [ "undercurl" ];
          information = [ "undercurl" ];
          warnings = [ "undercurl" ];
        };
      };
      integrations = {
        flash = true;
        grug_far = true;
        lsp_trouble = true;
        navic.enabled = true;
        noice = true;
        notifier = true;
        notify = true;
        snacks.enabled = true;
        treesitter = true;
        treesitter_context = true;
        which-key = true;
      };
    };
  };
}
