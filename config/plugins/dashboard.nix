{
  plugins.dashboard = {
    enable = true;
    settings = {
      config = {
        header = [
          "███╗   ███╗ ██████╗ ██╗   ██╗ ██████╗██╗  ██╗███████╗██╗  ██╗"
          "████╗ ████║██╔═══██╗██║   ██║██╔════╝██║  ██║██╔════╝██║  ██║"
          "██╔████╔██║██║   ██║██║   ██║██║     ███████║█████╗  ███████║"
          "██║╚██╔╝██║██║   ██║██║   ██║██║     ██╔══██║██╔══╝  ██╔══██║"
          "██║ ╚═╝ ██║╚██████╔╝╚██████╔╝╚██████╗██║  ██║███████╗██║  ██║"
          "╚═╝     ╚═╝ ╚═════╝  ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝"
        ];
        mru = {
          limit = 20;
        };
        project = {
          enable = false;
        };
        shortcut = [
          {
            action = {
              __raw = "function(path) vim.cmd('Telescope find_files') end";
            };
            desc = "Files";
            group = "Label";
            icon = " ";
            icon_hl = "@variable";
            key = "f";
          }
          {
            action = "LazyGit";
            desc = " LazyGit";
            group = "Number";
            key = "l";
          }
        ];
      };
      theme = "hyper";
    };
  };
}
