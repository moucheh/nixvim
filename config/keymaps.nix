{
  keymaps = [
    {
      action = ":w<CR>";
      key = "<C-s>";
      mode = [ "n" ];
    }
    {
      action = ":Oil<CR>";
      key = "-";
      mode = [ "n" ];
    }
    {
      action = ":qall<CR>";
      key = "<leader>q";
      mode = [ "n" ];
    }
    {
      action = ":qall!<CR>";
      key = "<leader>Q";
      mode = [ "n" ];
    }
    {
      action = ":bd!<CR>";
      key = "<leader>X";
      mode = [ "n" ];
    }
    {
      action = "nzzzv";
      key = "n";
      mode = [ "n" ];
    }
    {
      action = "Nzzzv";
      key = "N";
      mode = [ "n" ];
    }
    {
      action = "<C-d>zz";
      key = "<C-d>";
      mode = [ "n" ];
    }
    {
      action = "<C-u>zz";
      key = "<C-u>";
      mode = [ "n" ];
    }
    {
      action = "<gv";
      key = "<";
      mode = [ "n" ];
    }
    {
      action = ">gv";
      key = ">";
      mode = [ "n" ];
    }
    {
      action = "mzJ`z";
      key = "J";
      mode = [ "n" ];
    }
    {
      action = ":Telescope live_grep<CR>";
      key = "<leader>fw";
      mode = [ "n" ];
    }
    {
      action = ":Telescope find_files<CR>";
      key = "<leader>ff";
      mode = [ "n" ];
    }
    {
      action = "gcc";
      key = "<C-/>";
      mode = [ "n" ];
    }
    {
      action = "gc";
      key = "<C-/>";
      mode = [ "v" ];
    }
    {
      action = ":lua require('conform').format { lsp_format = 'fallback', async = true, timeout_ms = 500 }<CR>";
      key = "<leader>cf";
      mode = [ "n" ];
    }
  ];
}
