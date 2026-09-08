{
  imports = [
    ./cmp.nix
    ./conform.nix
    ./dashboard.nix
    ./hlchunk.nix
    ./hop.nix
    ./lensline.nix
    ./lualine.nix
    ./telescope.nix
  ];

  plugins = {
    blink-pairs.enable = true;
    bufferline.enable = true;
    gitsigns.enable = true;
    lazygit.enable = true;
    luasnip.enable = true;
    markdown-preview.enable = true;
    mini-notify.enable = true;
    neogit.enable = true;
    neo-tree.enable = true;
    nvim-surround.enable = true;
    oil.enable = true;
    treesitter = {
      enable = true;
      highlight.enable = true;
      indent.enable = true;
      folding.enable = true;
    };
    web-devicons.enable = true;
    which-key.enable = true;
  };
}
