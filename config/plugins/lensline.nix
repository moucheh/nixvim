{
  plugins.lensline = {
    enable = true;
    settings = {
      debounce_ms = 250;
      focused_debounce_ms = 50;
      limits = {
        exclude_gitignored = false;
        max_lenses = 50;
        max_lines = 500;
      };
    };
  };
}
