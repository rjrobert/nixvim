{
  keymaps = [
    # Snacks Picker
    {
      mode = "n";
      key = "<leader><space>";
      action.__raw = "function() Snacks.picker.smart() end";
      options.desc = "Find Files";
    }
    {
      mode = "n";
      key = "<leader>,";
      action.__raw = "function() Snacks.picker.buffers() end";
      options.desc = "Buffers";
    }
    {
      mode = "n";
      key = "<leader>/";
      action.__raw = "function() Snacks.picker.grep() end";
      options.desc = "Search Files";
    }
    {
      mode = "n";
      key = "<leader>n";
      action.__raw = "function() Snacks.picker.notifications() end";
      options.desc = "Notifications";
    }
    {
      mode = "n";
      key = "<leader>e";
      action.__raw = "function() Snacks.picker.explorer() end";
      options.desc = "File Explorer";
    }
    {
      mode = "n";
      key = "<leader>ff";
      action.__raw = "function() Snacks.picker.files() end";
      options.desc = "Find Files";
    }
    {
      mode = "n";
      key = "<leader>cl";
      action.__raw = "function() Snacks.picker.lsp_config() end";
      options.desc = "Lsp Info";
    }
    {
      mode = ["n" "x"];
      key = "gd";
      action.__raw = "function() Snacks.picker.lsp_definitions() end";
      options.desc = "Goto Definition";
    }

    # Snacks Terminal
    {
      mode = ["n" "t"];
      key = "<C-/>";
      action.__raw = "function() Snacks.terminal() end";
      options.desc = "Terminal";
    }
    {
      mode = "n";
      key = "<leader>ft";
      action.__raw = "function() Snacks.terminal() end";
      options.desc = "Terminal";
    }
    {
      mode = "n";
      key = "<leader>gg";
      action.__raw = "function() Snacks.terminal('lazygit') end";
      options.desc = "LazyGit";
    }

    # Buffer Management
    {
      mode = "n";
      key = "<leader>bd";
      action.__raw = "function() Snacks.bufdelete() end";
      options.desc = "Delete Buffer";
    }
    {
      mode = "n";
      key = "<leader>bo";
      action.__raw = "function() Snacks.bufdelete.other() end";
      options.desc = "Delete Other Buffers";
    }
    {
      mode = "n";
      key = "<leader>bD";
      action = "<cmd>:bd<cr>";
      options.desc = "Delete Buffer and Window";
    }
  ];
}
