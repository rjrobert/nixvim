{...}: {
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
      transparent_background = true;
      float.transparent = true;
      default_integrations = true;
      integrations = {
        blink_cmp = true;
        cmp = true;
        flash = true;
        fzf = true;
        grug_far = true;
        gitsigns = {
          enabled = true;
          transparent = true;
        };
        illuminate = true;
        lsp_trouble = true;
        mini.enabled = true;
        native_lsp.enabled = true;
        navic = {
          enabled = true;
          custom_bg = "NONE";
        };
        neotest = true;
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
