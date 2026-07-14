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
        
        ".config/nvim/lua/plugin-list.lua".source = ./config/lua/plugin-list.lua;        
        ".config/nvim/lua/manage.lua".source = ./config/lua/manage.lua;
        ".config/nvim/lua/config/keybinds.lua".source = ./config/lua/config/keybinds.lua;
        ".config/nvim/lua/config/options.lua".source = ./config/lua/config/options.lua;
        
        ".config/nvim/after/ftplugin/goon.lua".source = ./config/after/ftplugin/goon.lua;
        ".config/nvim/after/ftplugin/hare.lua".source = ./config/after/ftplugin/hare.lua;
        ".config/nvim/after/ftplugin/jsonc.lua".source = ./config/after/ftplugin/jsonc.lua;
        ".config/nvim/after/ftplugin/man.lua".source = ./config/after/ftplugin/man.lua;
        ".config/nvim/after/ftplugin/nix.lua".source = ./config/after/ftplugin/nix.lua;
        
        ".config/nvim/parser/c.so".source = ./config/parser/c.so;
        ".config/nvim/parser/go.so".source = ./config/parser/go.so;
        ".config/nvim/parser/javascript.so".source = ./config/parser/javascript.so;
        ".config/nvim/parser/lua.so".source = ./config/parser/lua.so;
        ".config/nvim/parser/nix.so".source = ./config/parser/nix.so;
        ".config/nvim/parser/php.so".source = ./config/parser/php.so;
        ".config/nvim/parser/rust.so".source = ./config/parser/rust.so;
        ".config/nvim/parser/zig.so".source = ./config/parser/zig.so;
        
        ".config/nvim/plugin/docgen.lua".source = ./config/plugin/docgen.lua;
        ".config/nvim/plugin/flterm.lua".source = ./config/plugin/flterm.lua;
        ".config/nvim/plugin/lsp.lua".source = ./config/plugin/lsp.lua;
        ".config/nvim/plugin/quickformat.lua".source = ./config/plugin/quickformat.lua;
        ".config/nvim/plugin/tonycontext.lua".source = ./config/plugin/tonycontext.lua.lua;
        ".config/nvim/plugin/tonysitter.lua".source = ./config/plugin/tonysitter.lua;

      };
    };
  };
}
