{inputs, lib, ...}: {
  flake-file.inputs.neovim-nightly-overlay = {
    url = "github:nix-community/neovim-nightly-overlay";
    inputs.nixpkgs.follows = "nixpkgs";
  };
  flake.nixosModules.neovim = {pkgs, ...}: {
    environment.systemPackages = [
      inputs.neovim-nightly-overlay.packages.${pkgs.stdenv.hostPlatform.system}.default
    ];

    hjem.users.jonf = {
      files = {
        ".config/nvim/init.lua".source = ./config/init.lua;
        ".config/nvim/lua".source = ./config/lua;
        ".config/nvim/after".source = ./config/after;
        ".config/nvim/parser".source = ./config/parser;
        ".config/nvim/plugin".source = ./config/plugin;
        ".config/nvim/queries".source = ./config/queries;
      };

    };
  };
}
