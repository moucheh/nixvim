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
          right_arrow = "⟶";
        };
        style = "#00ffff";
        use_treesitter = true;
      };
    };
  };
}
