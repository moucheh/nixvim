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
            action = "Telescope find_files";
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
          {
            action = "Telescope zoxide list";
            desc = " Zoxide";
            group = "Number";
            key = "z";
          }
        ];
      };
      theme = "hyper";
    };
  };
}
