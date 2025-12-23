{...}: {
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        theme = "catppuccin";
        globalstatus = true;
        disabled_filetypes.statusline = ["dashboard" "alpha" "snacks_dashboard"];
        component_separators = {
          left = "";
          right = "";
        };
        section_separators = {
          left = "";
          right = "";
        };
      };
      winbar = {
        lualine_c = ["nvim-navic"];
      };
      sections = {
        lualine_a = ["mode"];
        lualine_b = ["branch"];
        lualine_c = [
          {
            __unkeyed-1 = "diagnostics";
            sources = ["nvim_lsp" "nvim_diagnostic" "vim_lsp" "coc"];
            symbols = {
              error = " ";
              warn = " ";
              info = " ";
              hint = " ";
            };
          }
          {
            __unkeyed-1 = "filetype";
            icon_only = true;
            separator = "";
            padding = {
              left = 1;
              right = 0;
            };
          }
          {
            __unkeyed-1 = "filename";
            path = 1;
            symbols = {
              modified = "";
              readonly = "󰌾";
            };
          }
          {
            __unkeyed-1 = "nvim-navic";
            color_correction = "dynamic";
          }
        ];
        lualine_x = [
          {
            __unkeyed-1.__raw = ''function() return require("noice").api.status.command.get() end'';
            cond.__raw = ''function() return package.loaded["noice"] and require("noice").api.status.command.has() end'';
            color.__raw = ''function() return { fg = package.loaded["snacks"] and Snacks.util.color("Statement") } end'';
          }
          {
            __unkeyed-1.__raw = ''function() return require("noice").api.status.mode.get() end'';
            cond.__raw = ''function() return package.loaded["noice"] and require("noice").api.status.mode.has() end'';
            color.__raw = ''function() return { fg = package.loaded["snacks"] and Snacks.util.color("Constant") } end'';
          }
          {
            __unkeyed-1.__raw = ''function() return "  " .. require("dap").status() end'';
            cond.__raw = ''function() return package.loaded["dap"] and require("dap").status() ~= "" end'';
            color.__raw = ''function() return { fg = package.loaded["snacks"] and Snacks.util.color("Debug") } end'';
          }
          {
            __unkeyed-1 = "diff";
            symbols = {
              added = " ";
              modified = " ";
              removed = " ";
            };
            source.__raw = ''
              function()
                local gitsigns = vim.b.gitsigns_status_dict
                if gitsigns then
                  return {
                    added = gitsigns.added,
                    modified = gitsigns.changed,
                    removed = gitsigns.removed,
                  }
                end
              end
            '';
          }
        ];
      };
      extensions = ["neo-tree" "lazy"];
    };
  };
}
