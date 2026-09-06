{ pkgs, ... }:
let
  gcc = pkgs.gcc;
  cc = gcc.cc;
in
{
  globals.mapleader = " ";

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
    wildmenu = true;
    wildmode = "longest:full,full";

    redrawtime = 10000;
    maxmempattern = 20000;

    laststatus = 3;
    splitkeep = "screen";
    signcolumn = "yes";
  };

  extraConfigLua = ''
    local opt = vim.opt
    opt.iskeyword:append "-"
    opt.path:append("${cc}/include/c++/${gcc.version}")
    opt.path:append("${cc}/include/c++/${gcc.version}/x86_64-unknown-linux-gnu")
    opt.path:append("${cc}/lib/gcc/x86_64-unknown-linux-gnu/${gcc.version}/include")
    opt.shortmess:append "sI"
    opt.path:append "**"
    opt.clipboard:append "unnamedplus"
    opt.whichwrap:append "<>[]hl"
    opt.wildignore:append { '*.o', '*.obj', '*.pyc', '*.class', '*.jar', }
    opt.diffopt:append "linematch:60"

    local undodir = vim.fn.expand '~/.vim/undodir'
    if vim.fn.isdirectory(undodir) == 0 then
      vim.fn.mkdir(undodir, 'p')
    end
  '';
}
