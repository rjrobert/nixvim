{
  lib,
  pkgs,
  ...
}: {
  extraConfigLuaPre =
    #lua
    ''
      local slow_format_filetypes = {}
    '';

  plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save =
        #lua
        ''
          function(bufnr)
            if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
              return
            end

            if slow_format_filetypes[vim.bo[bufnr].filetype] then
              return
            end

            local function on_format(err)
              if err and err:match("timeout$") then
                slow_format_filetypes[vim.bo[bufnr].filetype] = true
              end
            end

            return { timeout_ms = 200, lsp_fallback = true }, on_format
          end
        '';
      format_after_save =
        #lua
        ''
          function(bufnr)
            if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
              return
            end

            return { lsp_fallback = true }
          end
        '';
      notify_on_error = true;
      formatters_by_ft = {
        lua = ["stylua"];
        "_" = ["trim_whitespace"];
      };
      formatters = {
        injected = {
          options.ignore_errors = true;
        };
        stylua = {
          command = "${lib.getExe pkgs.stylua}";
        };
      };
    };
  };

  keymaps = [
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>cf";
      action.__raw =
        #lua
        ''
          function()
            require("conform").format({ lsp_fallback = true })
          end
        '';
      options.desc = "Format Buffer";
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>cF";
      action.__raw =
        #lua
        ''
          function()
            require("conform").format({ formatters = {"injected"}, timeout_ms = 3000 })
          end
        '';
      options.desc = "Format Injected Langs";
    }
  ];
}
