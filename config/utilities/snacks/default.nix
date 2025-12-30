{...}: let
  enabled = enabled' {};
  enabled' = extra:
    {
      enabled = true;
    }
    // extra;
in {
  imports = [
    ./keymaps.nix
    ./dashboard.nix
  ];

  plugins.snacks = {
    enable = true;
    settings = {
      animate = enabled;
      bigfile = enabled;
      bufdelete = enabled;
      indent = enabled;
      input = enabled;
      notifier = enabled;
      picker = enabled;
      quickfile = enabled;
      scope = enabled;
      scroll = enabled;
      statuscolumn = enabled;
      styles = {
        notification.wo.wrap = true;
        notification_history.wo.wrap = true;
      };
      words = enabled;
    };

    luaConfig.post =
      #lua
      ''
        Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us")
        Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
        Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>uL")
        Snacks.toggle.diagnostics():map("<leader>ud")
        Snacks.toggle.line_number():map("<leader>ul")
        Snacks.toggle.option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2, name = "Conceal Level" }):map("<leader>uc")
        Snacks.toggle.option("showtabline", { off = 0, on = vim.o.showtabline > 0 and vim.o.showtabline or 2, name = "Tabline" }):map("<leader>uA")
        Snacks.toggle.treesitter():map("<leader>uT")
        Snacks.toggle.dim():map("<leader>uD")
        Snacks.toggle.animate():map("<leader>ua")
        Snacks.toggle.indent():map("<leader>ug")
        Snacks.toggle.scroll():map("<leader>uS")
        Snacks.toggle.inlay_hints():map("<leader>uh")
        Snacks.toggle({
          name = "Mini Diff Signs",
        get = function()
          return vim.g.minidiff_disable ~= true
        end,
        set = function(state)
          vim.g.minidiff_disable = not state
          if state then
            require("mini.diff").enable(0)
          else
            require("mini.diff").disable(0)
          end
          -- HACK: redraw to update the signs
          vim.defer_fn(function()
            vim.cmd([[redraw!]])
          end, 200)
        end,
        }):map("<leader>uG")
      '';
  };
}
