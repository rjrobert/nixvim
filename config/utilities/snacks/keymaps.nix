{
  keymaps = [
    # Snacks Picker
    {
      mode = "n";
      key = "<leader><space>";
      action.__raw =
        #lua
        "function() Snacks.picker.smart() end";
      options.desc = "Find Files";
    }
    {
      mode = "n";
      key = "<leader>,";
      action.__raw =
        #lua
        "function() Snacks.picker.buffers() end";
      options.desc = "Buffers";
    }
    {
      mode = "n";
      key = "<leader>/";
      action.__raw =
        #lua
        "function() Snacks.picker.grep() end";
      options.desc = "Search Files";
    }
    {
      mode = "n";
      key = "<leader>n";
      action.__raw =
        #lua
        "function() Snacks.picker.notifications() end";
      options.desc = "Notifications";
    }
    {
      mode = "n";
      key = "<leader>e";
      action.__raw =
        #lua
        "function() Snacks.picker.explorer() end";
      options.desc = "File Explorer";
    }
    {
      mode = "n";
      key = "<leader>ff";
      action.__raw =
        #lua
        "function() Snacks.picker.files() end";
      options.desc = "Find Files";
    }
    {
      mode = "n";
      key = "<leader>cl";
      action.__raw =
        #lua
        "function() Snacks.picker.lsp_config() end";
      options.desc = "Lsp Info";
    }
    {
      mode = ["n" "x"];
      key = "gd";
      action.__raw =
        #lua
        "function() Snacks.picker.lsp_definitions() end";
      options.desc = "Goto Definition";
    }

    # Snacks Terminal
    {
      mode = ["n" "t"];
      key = "<C-/>";
      action.__raw =
        #lua
        "function() Snacks.terminal() end";
      options.desc = "Terminal";
    }
    {
      mode = "n";
      key = "<leader>ft";
      action.__raw =
        #lua
        "function() Snacks.terminal() end";
      options.desc = "Terminal";
    }
    {
      mode = "n";
      key = "<leader>gg";
      action.__raw =
        #lua
        "function() Snacks.terminal('lazygit') end";
      options.desc = "LazyGit";
    }

    # Buffer Management
    {
      mode = "n";
      key = "<leader>bd";
      action.__raw =
        #lua
        "function() Snacks.bufdelete() end";
      options.desc = "Delete Buffer";
    }
    {
      mode = "n";
      key = "<leader>bo";
      action.__raw =
        #lua
        "function() Snacks.bufdelete.other() end";
      options.desc = "Delete Other Buffers";
    }
    {
      mode = "n";
      key = "<leader>bD";
      action = "<cmd>:bd<cr>";
      options.desc = "Delete Buffer and Window";
    }

    # Git
    {
      mode = "n";
      key = "<leader>gb";
      action.__raw =
        #lua
        "function() Snacks.git.blame_line() end";
      options.desc = "Git Blame Line";
    }
    {
      mode = "n";
      key = "<leader>gd";
      action.__raw =
        #lua
        "function() Snacks.picker.git_diff() end";
      options.desc = "Git Diff (hunks)";
    }
    {
      mode = "n";
      key = "<leader>gD";
      action.__raw =
        #lua
        ''
          function()
            Snacks.picker.git_diff({base = "origin", group = true})
          end
        '';
      options.desc = "Git Diff (origin)";
    }
    {
      mode = "n";
      key = "<leader>gs";
      action.__raw =
        #lua
        "function() Snacks.picker.git_status() end";
      options.desc = "Git Status";
    }
    {
      mode = "n";
      key = "<leader>gS";
      action.__raw =
        #lua
        "function() Snacks.picker.git_stash() end";
      options.desc = "Git Stash";
    }
  ];
}
