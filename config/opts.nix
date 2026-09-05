{ lib, ... }:
{
  opts = {
    foldenable = false;
    number = true;
    relativenumber = true;
    cursorline = true;
    wrap = true;
    scrolloff = 10;
    sidescrolloff = 8;
    winborder = "rounded";

    tabstop = 2;
    shiftwidth = 2;
    softtabstop = 2;
    expandtab = true;
    smartindent = true;
    autoindent = true;

    ignorecase = true;
    smartcase = true;
    hlsearch = true;
    incsearch = true;

    termguicolors = true;
    showmatch = true;
    matchtime = 2;
    cmdheight = 0;
    completeopt = "menuone,noinsert,noselect";
    showmode = false;
    pumheight = 10;
    pumblend = 10;
    winblend = 0;
    conceallevel = 0;
    concealcursor = "";
    synmaxcol = 300;

    swapfile = false;
    undofile = true;
    updatetime = 300;
    timeoutlen = 500;
    autoread = true;
    autowrite = false;

    hidden = true;
    errorbells = false;
    backspace = "indent,eol,start";
    autochdir = false;
    mouse = "a";
    encoding = "UTF-8";

    splitbelow = true;
    splitright = true;
    iskeyword = lib.mkAfter "-";
    path = lib.mkAfter "**";
    clipboard = lib.mkAfter "unnamedplus";
    whichwrap = lib.mkAfter "<>[]hl";
    wildmenu = true;
    wildmode = "longest:full,full";
    wildignore = lib.mkAfter [ "*.o" "*.obj" "*.pyc" "*.class" "*.jar" ];

    diffopt = lib.mkAfter "linematch:60";

    redrawtime = 10000;
    maxmempattern = 20000;

    undodir = "/home/moucheh/.vim/undodir";

    laststatus = 3;
    splitkeep = "screen";
    signcolumn = "yes"; 

  };
}
