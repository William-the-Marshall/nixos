{ inputs, self, ... }: {
  flake.nixosConfigurations.desktop = inputs.nixpkgs.lib.nixosSystem {
    modules = with self.nixosModules; [
      desktop
    ];
  };


  flake.nixosModules.desktop = {pkgs, ...}: {
    imports = with self.nixosModules; [
      hjem
      stylix

      # services
      audio
      graphics
      greetd
      vicinae

      # packages
      core
      cli
      programming

      niri
      noctalia
      kitty
      neovim
      zen
    ];

  };
}
