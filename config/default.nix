{
  imports = [
    ./opts.nix
    ./keymaps.nix
    ./plugins.nix
    ./lsp.nix
  ];

  colorschemes.catppuccin.enable = true;

  globals.mapleader = " ";
}
