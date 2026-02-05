{
  lib,
  pkgs,
  ...
}: {
  lsp.servers = {
    golangci_lint_ls.enable = true;
    gopls = {
      enable = true;
      config = {
        gofumpt = true;
        codelenses = {
          gc_details = false;
          generate = true;
          regenerate_cgo = true;
          run_govulncheck = true;
          test = true;
          tidy = true;
          upgrade_dependency = true;
          vendor = true;
        };
        hints = {
          assignVariableTypes = true;
          compositeLiteralFields = true;
          compositeLiteralTypes = true;
          constantValues = true;
          functionTypeParameters = true;
          parameterNames = true;
          rangeVariableTypes = true;
        };
        analyses = {
          nilness = true;
          unusedparams = true;
          unusedwrite = true;
          useany = true;
        };
        usePlaceholders = true;
        completeUnimported = true;
        staticcheck = false;
        directoryFilters = [
          "-.git"
          "-.vscode"
          "-.idea"
          "-.vscode-test"
          "-node_modules"
        ];
        semanticTokens = true;
      };
    };
  };

  plugins = {
    conform-nvim.settings = {
      formatters_by_ft = {
        go = [
          "goimports"
          "gofumpt"
        ];
      };
      formatters = {
        gofmt = {
          command = "${pkgs.go}/bin/gofmt";
        };
        gofumpt = {
          command = "${lib.getExe pkgs.gofumpt}";
        };
        goimports = {
          command = "${pkgs.go}/bin/goimports";
        };
      };
    };

    lint.lintersByFt = {
      go = ["golangcilint"];
    };

    neotest.adapters.golang = {
      enable = true;
      settings = {
        filter_dirs = [".git"];
      };
    };
  };
}
