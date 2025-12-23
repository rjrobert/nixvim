{lib, ...}: {
  plugins = {
    persistence = {
      enable = true;
      settings = {
        branch = true;
        need = 1;
        dir = lib.nixvim.mkRaw "vim.fn.expand(vim.fn.stdpath('state') .. '/sessions/')";
      };
    };

    snacks.settings.dashboard = {
      enabled = true;
      preset.keys = [
        {
          icon = " ";
          key = "f";
          desc = "Find File";
          action = ":lua Snacks.dashboard.pick('files')";
        }
        {
          icon = " ";
          key = "n";
          desc = "New File";
          action = ":ene | startinsert";
        }
        {
          icon = " ";
          key = "g";
          desc = "Find Text";
          action = ":lua Snacks.dashboard.pick('live_grep')";
        }
        {
          icon = " ";
          key = "r";
          desc = "Recent Files";
          action = ":lua Snacks.dashboard.pick('oldfiles')";
        }
        {
          icon = " ";
          key = "s";
          desc = "Restore Session (Directory)";
          action = ":lua require('persistence').load()";
        }
        {
          icon = " ";
          key = "q";
          desc = "Quit";
          action = ":qa";
        }
      ];
      sections = [
        {section = "header";}
        {
          section = "keys";
          gap = 1;
          padding = 1;
        }
        {
          section = "terminal";
          cmd = "fortune";
          hl = "footer";
          padding = 1;
        }
      ];
    };
  };
}
