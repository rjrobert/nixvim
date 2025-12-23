{
  globals = {
    mapleader = " ";
    maplocalleader = "\\";
  };

  opts = {
    # Line numbers
    number = true;
    relativenumber = true;

    # Tabs & indentation
    tabstop = 2;
    shiftwidth = 2;
    expandtab = true;
    autoindent = true;
    smartindent = true;

    # Line wrapping
    wrap = false;

    # Search
    ignorecase = true;
    smartcase = true;
    hlsearch = true;
    incsearch = true;

    # Appearance
    termguicolors = true;
    signcolumn = "yes";
    cursorline = true;
    scrolloff = 8;
    sidescrolloff = 8;
    fillchars = {
      foldopen = "";
      foldclose = "";
      fold = " ";
      foldsep = " ";
      diff = "╱";
      eob = " ";
    };

    # Behavior
    splitright = true;
    splitbelow = true;
    clipboard = "unnamedplus";
    undofile = true;
    swapfile = false;
    updatetime = 200;
    timeoutlen = 300;
    confirm = true;

    # Completion
    completeopt = "menu,menuone,noselect";
    pumheight = 10;

    # Folding (with treesitter)
    foldmethod = "expr";
    foldexpr = "nvim_treesitter#foldexpr()";
    foldenable = false;
    foldlevel = 99;
  };
}
