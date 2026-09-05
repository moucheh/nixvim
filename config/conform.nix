{
  plugins.conform-nvim = {
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
}
