{
  plugins.hlchunk = {
    enable = true;
    settings = {
      line_num = {
        enable = true;
        style = "#91bef0";
        use_treesitter = true;
      };
      chunk = {
        enable = true;
        chars = {
          horizontal_line = "─";
          vertical_line = "│";
          left_top = "┌";
          left_bottom = "└";
          right_arrow = "─";
        };
        style = "#00ffff";
      };
      indent = {
        chars = [
          "│"
        ];
        exclude_filetypes = {
          lazyterm = true;
          neo-tree = true;
        };
        style = {
          fg = "#45475a";
        };
        use_treesitter = false;
      };
    };
  };
}
