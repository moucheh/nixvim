{
  plugins.telescope = {
    enable = true;
    settings = {
      defaults = {
        file_ignore_patterns = [
          "^.git/"
          "^.mypy_cache/"
          "^__pycache__/"
          "^output/"
          "^data/"
          "%.ipynb"
        ];
        layout_strategy = "flex";
        layout_config = {
          prompt_position = "top";
          horizontal = {
            prompt_position = "top";
            preview_width = 0.55;
          };
          vertical = {
            prompt_position = "top";
            mirror = true;
            preview_height = 0.45;
          };
          flex = {
            flip_columns = 140;
          };
          width = 0.87;
          height = 0.80;
        };
        initial_mode = "normal";
        mappings = {
          n = {
            "q" = {
              __raw = ''
                require('telescope.actions').close
              '';
            };
            "<tab>" = {
              __raw = ''
                require('telescope.actions').toggle_selection + require('telescope.actions').move_selection_worse
              '';
            };
            "<s-tab>" = {
              __raw = ''
                require('telescope.actions').toggle_selection + require('telescope.actions').move_selection_better
              '';
            };
            "<cr>" = {
              __raw = ''
                function(prompt_bufnr)
                  local picker = require('telescope.actions.state').get_current_picker(prompt_bufnr)
                  local multi = picker:get_multi_selection()

                  if vim.tbl_isempty(multi) then
                    require('telescope.actions').select_default(prompt_bufnr)
                  else
                    require('telescope.actions').close(prompt_bufnr)
                    for _, entry in ipairs(multi) do
                      vim.cmd('edit ' .. entry.path)
                    end
                  end
                end
              '';
            };
          };
        };
        selection_caret = " ";
        prompt_prefix = "   ";
        entry_prefix = " ";
        set_env = {
          COLORTERM = "truecolor";
        };
        sorting_strategy = "ascending";
      };
    };
  };
}
