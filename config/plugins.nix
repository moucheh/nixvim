{
  plugins = {
    gitsigns.enable = true;
    lualine.enable = true;
    luasnip.enable = true;
    nvim-surround.enable = true;
    oil.enable = true;
    telescope.enable = true;
    treesitter = {
      enable = true;
      highlight.enable = true;
      indent.enable = true;
      folding.enable = true;
    };
    web-devicons.enable = true;
    which-key.enable = true;

    conform-nvim = {
      enable = true;
      autoInstall.enable = true;
      settings = {
        formatters_by_ft = {
          c = [ "clang-format" ];
          cpp = [ "clang-format" ];
          java = [ "google-java-format" ];
          lua = [ "stylua" ];
          css = [ "prettierd" ];
          html = [ "prettierd" ];
          python = [ "black" ];
          javascript = [ "prettierd" ];
          javascriptreact = [ "prettierd" ];
          typescript = [ "prettierd" ];
          typescriptreact = [ "prettierd" ];
          typst = [ "prettypst" ];
        };
      };
    };

    cmp = {
      enable = true;
      autoEnableSources = true;

      settings = {
        sources = [
          { name = "nvim_lsp"; }
          { name = "path"; }
          { name = "buffer"; }
        ];

        mapping = {
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<C-Space>" = "cmp.mapping.complete()";
        };
      };
    };
  };
}
