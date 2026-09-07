let
  formatAction =  ":lua require('conform').format { lsp_format = 'fallback', async = true, timeout_ms = 500 }<CR>";
  diagnosticLocListAction = ":lua vim.diagnostic.setloclist()<CR>";
in
{
  keymaps = [
    { key = "<"               ; action = "<gv"                  ; mode = [ "n"     ]; }
    { key = ">"               ; action = ">gv"                  ; mode = [ "n"     ]; }
    { key = "-"               ; action = ":Oil<CR>"             ; mode = [ "n"     ]; }
    { key = "<A-j>"           ; action = ":m '>+1<CR>gv=gv"     ; mode = [ "v"     ]; }
    { key = "<A-j>"           ; action = ":m .+1<CR>=="         ; mode = [ "n"     ]; }
    { key = "<A-k>"           ; action = ":m '<-2<CR>gv=gv"     ; mode = [ "v"     ]; }
    { key = "<A-k>"           ; action = ":m .-2<CR>=="         ; mode = [ "n"     ]; }
    { key = "<C-/>"           ; action = "gcc"                  ; mode = [ "n"     ]; }
    { key = "<C-/>"           ; action = "gc"                   ; mode = [ "v"     ]; }
    { key = "<C-c>"           ; action = "<CMD>%y+<CR>"         ; mode = [ "n"     ]; }
    { key = "<C-d>"           ; action = "<C-d>zz"              ; mode = [ "n"     ]; }
    { key = "<C-h>"           ; action = "<C-w>h"               ; mode = [ "n"     ]; }
    { key = "<C-j>"           ; action = "<C-w>j"               ; mode = [ "n"     ]; }
    { key = "<C-k>"           ; action = "<C-w>k"               ; mode = [ "n"     ]; }
    { key = "<C-l>"           ; action = "<C-w>l"               ; mode = [ "n"     ]; }
    { key = "<C-s>"           ; action = ":w<CR>"               ; mode = [ "n"     ]; }
    { key = "<C-u>"           ; action = "<C-u>zz"              ; mode = [ "n"     ]; }
    { key = "<Escape>"        ; action = ":noh<CR>"             ; mode = [ "n"     ]; }
    { key = "<Escape><Escape>"; action = "<C-\\><C-n>"          ; mode = [ "t"     ]; }
    { key = "J"               ; action = "mzJ`z"                ; mode = [ "n"     ]; }
    { key = "<leader>cf"      ; action = formatAction           ; mode = [ "n" "v" ]; }
    { key = "<leader>ds"      ; action = diagnosticLocListAction; mode = [ "n"     ]; }
    { key = "<leader>e"       ; action = ":Neotree toggle<CR>"  ; mode = [ "n"     ]; }
    { key = "<leader>lg"      ; action = ":LazyGit<CR>"         ; mode = [ "n"     ]; }
    { key = "<leader>ng"      ; action = ":Neogit<CR>"          ; mode = [ "n"     ]; }
    { key = "<leader>q"       ; action = ":qall<CR>"            ; mode = [ "n"     ]; }
    { key = "<leader>Q"       ; action = ":qall!<CR>"           ; mode = [ "n"     ]; }
    { key = "<leader>tc"      ; action = ":tabclose<CR>"        ; mode = [ "n"     ]; }
    { key = "<leader>te"      ; action = ":tabnew<CR>"          ; mode = [ "n"     ]; }
    { key = "<leader>tt"      ; action = ":split<CR>:term<CR>a" ; mode = [ "n"     ]; }
    { key = "<leader>x"       ; action = ":bd<CR>"              ; mode = [ "n"     ]; }
    { key = "<leader>X"       ; action = ":bd!<CR>"             ; mode = [ "n"     ]; }
    { key = "n"               ; action = "nzzzv"                ; mode = [ "n"     ]; }
    { key = "N"               ; action = "Nzzzv"                ; mode = [ "n"     ]; }
    { key = "<S-Tab>"         ; action = ":bprevious<CR>"       ; mode = [ "n"     ]; }
    { key = "<Tab>"           ; action = ":bnext<CR>"           ; mode = [ "n"     ]; }
  ];
}
