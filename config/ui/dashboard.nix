{...}: {
  plugins.alpha = {
    enable = true;
    layout = [
      {
        type = "padding";
        val = 8;
      }
      {
        type = "text";
        val = [
          "███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
          "████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
          "██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
          "██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
          "██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
          "╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
        ];
        opts = {
          position = "center";
          hl = "Type";
        };
      }
      {
        type = "padding";
        val = 2;
      }
      {
        type = "group";
        val = [
          {
            type = "button";
            val = "  Find file";
            on_press.__raw = "function() require('telescope.builtin').find_files() end";
            opts = {
              shortcut = "f";
              keymap = [
                "n"
                "f"
                "<cmd>Telescope find_files<cr>"
                {
                  noremap = true;
                  silent = true;
                }
              ];
              position = "center";
              cursor = 3;
              width = 50;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
            };
          }
          {
            type = "button";
            val = "  New file";
            on_press.__raw = "function() vim.cmd('ene') end";
            opts = {
              shortcut = "n";
              keymap = [
                "n"
                "n"
                "<cmd>ene<cr>"
                {
                  noremap = true;
                  silent = true;
                }
              ];
              position = "center";
              cursor = 3;
              width = 50;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
            };
          }
          {
            type = "button";
            val = "  Recent files";
            on_press.__raw = "function() require('telescope.builtin').oldfiles() end";
            opts = {
              shortcut = "r";
              keymap = [
                "n"
                "r"
                "<cmd>Telescope oldfiles<cr>"
                {
                  noremap = true;
                  silent = true;
                }
              ];
              position = "center";
              cursor = 3;
              width = 50;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
            };
          }
          {
            type = "button";
            val = "  Find text";
            on_press.__raw = "function() require('telescope.builtin').live_grep() end";
            opts = {
              shortcut = "g";
              keymap = [
                "n"
                "g"
                "<cmd>Telescope live_grep<cr>"
                {
                  noremap = true;
                  silent = true;
                }
              ];
              position = "center";
              cursor = 3;
              width = 50;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
            };
          }
          {
            type = "button";
            val = "  Quit";
            on_press.__raw = "function() vim.cmd('qa') end";
            opts = {
              shortcut = "q";
              keymap = [
                "n"
                "q"
                "<cmd>qa<cr>"
                {
                  noremap = true;
                  silent = true;
                }
              ];
              position = "center";
              cursor = 3;
              width = 50;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
            };
          }
        ];
      }
      {
        type = "padding";
        val = 2;
      }
      {
        type = "text";
        val.__raw = "function() return 'Loaded in ' .. vim.fn.printf('%.3f', vim.fn.reltimefloat(vim.fn.reltime(vim.g.start_time or vim.fn.reltime()))) .. 's' end";
        opts = {
          position = "center";
          hl = "Comment";
        };
      }
    ];
  };
}
