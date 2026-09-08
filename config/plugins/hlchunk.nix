{
  plugins.hlchunk = {
    enable = true;
    settings = {
      line_num = {
        enable = true;
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
        use_treesitter = true;
      };
    };
  };
}
