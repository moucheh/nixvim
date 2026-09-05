{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        bashls.enable = true;
        clangd.enable = true;
        cssls.enable = true;
        emmet_language_server.enable = true;
        html.enable = true;
        jdtls.enable = true;
        lua_ls = {
          enable = true;
          settings = {
            diagnostics = {
              globals = [ "vim" ];
            };
          };
        };
        nil_ls.enable = true;
        pyright.enable = true;
        rust_analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
        };
        sqls.enable = true;
        tinymist.enable = true;
        ts_ls.enable = true;
        vhdl_ls.enable = true;
        yamlls.enable = true;
      };
    };
  };

  diagnostic.settings.virtual_text = true;
}
