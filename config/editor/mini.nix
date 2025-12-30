{lib, ...}: {
  plugins = {
    mini = {
      enable = true;
      mockDevIcons = true;
      modules = {
        ai = {
          n_lines = 500;
          #   custom_textobjects = {
          #     o.__raw = ''
          #       require("mini.ai").gen_spec.treesitter({
          #         a = { "@block.outer", "@conditional.outer", "@loop.outer" },
          #         i = { "@block.inner", "@conditional.inner", "@loop.inner" },
          #       })
          #     '';
          #   };
        };
        bufremove = {};
        comment = {};
        icons = {};
        pairs = {
          modes = {
            insert = true;
            command = true;
            terminal = false;
          };
          skip_next = ''[=[[%w%%%'%[%"%.%`%$]]=]'';
          skip_ts = "string";
          skip_unbalanced = true;
          markdown = true;
        };
        surround = {
          n_lines = 50;
          respect_selection_type = true;
          search_method = "cover_or_next";
          mappings = {
            add = "gsa";
            delete = "gsd";
            find = "gsf";
            find_left = "gsF";
            highlight = "gsh";
            replace = "gsr";
          };
        };
      };
    };

    mini-diff = {
      enable = true;
      lazyLoad.settings = {
        before.__raw = ''require("snacks")'';
      };
      settings = {
        view = {
          style = "sign";
          signs = {
            add = "▎";
            change = "▎";
            delete = "";
          };
        };
      };
    };

    lualine.settings.sections.lualine_x = lib.mkAfter [
      {
        __unkeyed-1 = "diff";
        symbols = {
          added = " ";
          modified = " ";
          removed = " ";
        };
        source.__raw =
          #lua
          ''
            function()
              local summary = vim.b.minidiff_summary
              return summary
                and {
                  added = summary.add,
                  modified = summary.change,
                  removed = summary.delete,
                }
            end
          '';
      }
    ];
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>go";
      action.__raw =
        #lua
        ''
          function()
            require('mini.diff').toggle_overlay(0)
          end
        '';
      options.desc = "Toggle mini.diff overlay";
    }
  ];
}
