{pkgs, ...}: {
  nixpkgs.overlays = [
    (final: prev: {
      neotest = prev.vimUtils.buildVimPlugin {
        pname = "neotest";
        version = "5.13.1-patched2";
        src = prev.fetchFromGitHub {
          owner = "appaquet";
          repo = "neotest";
          rev = "fix/add-subprocess-default-init-back";
          sha256 = "sha256-UVXje4ENyKtLbL8lWrnacYdHFqE/rEiHkOhGzdwpN1U=";
        };
        propagatedBuildInputs = with prev.vimPlugins; [
          nvim-nio
          plenary-nvim
        ];
        doCheck = false;
        meta.homepage = "https://github.com/nvim-neotest/neotest";
      };

      # https://github.com/fredrikaverpil/neotest-golang
      neotest-golang = prev.vimUtils.buildVimPlugin {
        pname = "neotest-golang";
        version = "2.5.1";
        src = prev.fetchFromGitHub {
          owner = "fredrikaverpil";
          repo = "neotest-golang";
          rev = "v2.6.0";
          sha256 = "sha256-aIiyJbJaB8YLfgt0S/MvP2AM32qE34WRfTa7249K5BQ=";
        };
        propagatedBuildInputs = [
          final.vimPlugins.neotest # Use our custom neotest from this overlay
        ];
        doCheck = false;
        meta.homepage = "https://github.com/fredrikaverpil/neotest-golang/";
      };
    })
  ];
  imports = [
    ./core
    ./editor
    ./lsp
    ./ui
    ./utilities
  ];

  extraPackages = with pkgs; [
    fortune
  ];
}
