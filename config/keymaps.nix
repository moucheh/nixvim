let
  formatAction =  ":lua require('conform').format { lsp_format = 'fallback', async = true, timeout_ms = 500 }<CR>";
  diagnosticLocListAction = ":lua vim.diagnostic.setloclist()<CR>";
in
{
  keymaps = [
    { key = "<"               ; action = "<gv"                  ; mode = [ "n"     ]; options.desc = "Indent left"                 ; }
    { key = ">"               ; action = ">gv"                  ; mode = [ "n"     ]; options.desc = "Indent right"                ; }
    { key = "-"               ; action = ":Oil<CR>"             ; mode = [ "n"     ]; options.desc = "Open Oil file browser"       ; }
    { key = "<A-j>"           ; action = ":m '>+1<CR>gv=gv"     ; mode = [ "v"     ]; options.desc = "Move selection down"         ; }
    { key = "<A-j>"           ; action = ":m .+1<CR>=="         ; mode = [ "n"     ]; options.desc = "Move line down"              ; }
    { key = "<A-k>"           ; action = ":m '<-2<CR>gv=gv"     ; mode = [ "v"     ]; options.desc = "Move selection up"           ; }
    { key = "<A-k>"           ; action = ":m .-2<CR>=="         ; mode = [ "n"     ]; options.desc = "Move line up"                ; }
    { key = "<C-/>"           ; action = "gcc"                  ; mode = [ "n"     ]; options.desc = "Toggle comment on line"      ; }
    { key = "<C-/>"           ; action = "gc"                   ; mode = [ "v"     ]; options.desc = "Toggle comment on selection" ; }
    { key = "<C-c>"           ; action = "<CMD>%y+<CR>"         ; mode = [ "n"     ]; options.desc = "Copy file to clipboard"      ; }
    { key = "<C-d>"           ; action = "<C-d>zz"              ; mode = [ "n"     ]; options.desc = "Scroll down and center"      ; }
    { key = "<C-h>"           ; action = "<C-w>h"               ; mode = [ "n"     ]; options.desc = "Move to left window"         ; }
    { key = "<C-j>"           ; action = "<C-w>j"               ; mode = [ "n"     ]; options.desc = "Move to below window"        ; }
    { key = "<C-k>"           ; action = "<C-w>k"               ; mode = [ "n"     ]; options.desc = "Move to above window"        ; }
    { key = "<C-l>"           ; action = "<C-w>l"               ; mode = [ "n"     ]; options.desc = "Move to right window"        ; }
    { key = "<C-s>"           ; action = ":w<CR>"               ; mode = [ "n"     ]; options.desc = "Save file"                   ; }
    { key = "<C-u>"           ; action = "<C-u>zz"              ; mode = [ "n"     ]; options.desc = "Scroll up and center"        ; }
    { key = "<Escape>"        ; action = ":noh<CR>"             ; mode = [ "n"     ]; options.desc = "Clear search highlight"      ; }
    { key = "<Escape><Escape>"; action = "<C-\\><C-n>"          ; mode = [ "t"     ]; options.desc = "Exit terminal mode"          ; }
    { key = "J"               ; action = "mzJ`z"                ; mode = [ "n"     ]; options.desc = "Join lines preserving cursor"; }
    { key = "<leader>cf"      ; action = formatAction           ; mode = [ "n" "v" ]; options.desc = "Format file"                 ; }
    { key = "<leader>ds"      ; action = diagnosticLocListAction; mode = [ "n"     ]; options.desc = "Diagnostics to loclist"      ; }
    { key = "<leader>e"       ; action = ":Neotree toggle<CR>"  ; mode = [ "n"     ]; options.desc = "Toggle NeoTree"              ; }
    { key = "<leader>lg"      ; action = ":LazyGit<CR>"         ; mode = [ "n"     ]; options.desc = "Open LazyGit"                ; }
    { key = "<leader>ng"      ; action = ":Neogit<CR>"          ; mode = [ "n"     ]; options.desc = "Open Neogit"                 ; }
    { key = "<leader>q"       ; action = ":qall<CR>"            ; mode = [ "n"     ]; options.desc = "Quit all"                    ; }
    { key = "<leader>Q"       ; action = ":qall!<CR>"           ; mode = [ "n"     ]; options.desc = "Force quit all"              ; }
    { key = "<leader>tc"      ; action = ":tabclose<CR>"        ; mode = [ "n"     ]; options.desc = "Close tab"                   ; }
    { key = "<leader>te"      ; action = ":tabnew<CR>"          ; mode = [ "n"     ]; options.desc = "New tab"                     ; }
    { key = "<leader>tt"      ; action = ":split<CR>:term<CR>a" ; mode = [ "n"     ]; options.desc = "Open terminal split"         ; }
    { key = "<leader>x"       ; action = ":bd<CR>"              ; mode = [ "n"     ]; options.desc = "Close buffer"                ; }
    { key = "<leader>X"       ; action = ":bd!<CR>"             ; mode = [ "n"     ]; options.desc = "Force close buffer"          ; }
    { key = "n"               ; action = "nzzzv"                ; mode = [ "n"     ]; options.desc = "Next search result center"   ; }
    { key = "N"               ; action = "Nzzzv"                ; mode = [ "n"     ]; options.desc = "Prev search result center"   ; }
    { key = "<S-Tab>"         ; action = ":bprevious<CR>"       ; mode = [ "n"     ]; options.desc = "Previous buffer"             ; }
    { key = "<Tab>"           ; action = ":bnext<CR>"           ; mode = [ "n"     ]; options.desc = "Next buffer"                 ; }
  ];
}
