{ inputs, self, ... }: {
  flake.nixosConfigurations.desktop = inputs.nixpkgs.lib.nixosSystem {
    modules = with self.nixosModules; [
      desktop
      hardware
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

      # userland packages
      core
      cli
      programming
      gaming
      niri
      noctalia
      kitty
      neovim
      zen
    ];

  };
}
