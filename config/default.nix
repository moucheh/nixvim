{
  imports = [
    ./opts.nix
    ./keymaps.nix
    ./plugins.nix
    ./lsp.nix
    ./autocmds.nix
  ];

  colorschemes.catppuccin.enable = true;

  globals.mapleader = " ";
}
