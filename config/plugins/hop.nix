{
  plugins.hop = {
    enable = true;
    settings = {
      case_insensitive = true;
      jump_on_sole_occurrence = true;
      keys = "etovxqpdygfblzhckisuran";
      quit_key = "<Esc>";
      virtual_cursor = true;
    };
  };

  keymaps = [
    {
      action = ":HopChar1<CR>";
      key = "<leader>hf";
      mode = [ "n" ];
    }
    {
      action = ":HopCamelCase<CR>";
      key = "<leader>hc";
      mode = [ "n" ];
    }
    {
      key = "f";
      action.__raw = ''
        function()
          require'hop'.hint_char1({
            direction = require'hop.hint'.HintDirection.AFTER_CURSOR,
            current_line_only = true
          })
        end
      '';
      options.remap = true;
    }
    {
      key = "F";
      action.__raw = ''
        function()
          require'hop'.hint_char1({
            direction = require'hop.hint'.HintDirection.BEFORE_CURSOR,
            current_line_only = true
          })
        end
      '';
      options.remap = true;
    }
    {
      key = "t";
      action.__raw = ''
        function()
          require'hop'.hint_char1({
            direction = require'hop.hint'.HintDirection.AFTER_CURSOR,
            current_line_only = true,
            hint_offset = -1
          })
        end
      '';
      options.remap = true;
    }
    {
      key = "T";
      action.__raw = ''
        function()
          require'hop'.hint_char1({
            direction = require'hop.hint'.HintDirection.BEFORE_CURSOR,
            current_line_only = true,
            hint_offset = 1
          })
        end
      '';
      options.remap = true;
    }
  ];
}
