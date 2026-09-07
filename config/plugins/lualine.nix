{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        globalstatus = true;
      };
      sections = {
        lualine_a = [
          "mode"
        ];
        lualine_b = [
          "branch"
        ];
        lualine_c = [
          "filename"
          "diff"
          {
            __unkeyed-1 = "searchcount";
            maxcount = 999999;
            timeout = 500;
          }
        ];
        lualine_x = [
          "diagnostics"
          {
            __unkeyed-1 = {
              __raw = ''
                function()
                    local msg = ""
                    local buf_ft = vim.bo[0].filetype
                    local clients = vim.lsp.get_clients({ bufnr = 0 })
                    if next(clients) == nil then
                        return msg
                    end
                    for _, client in ipairs(clients) do
                        local filetypes = client.config.filetypes
                        if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                            return client.name
                        end
                    end
                    return msg
                end
              '';
            };
            color = {
              fg = "#ffffff";
            };
            icon = " ";
          }
          "filetype"
        ];
        lualine_y = [
          "progress"
        ];
        lualine_z = [
          "location"
        ];
      };
    };
  };
}
