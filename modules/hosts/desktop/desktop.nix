{ inputs, self, ... }: {
  flake.nixosConfigurations.desktop = inputs.nixpkgs.lib.nixosSystem {
    modules = with self.nixosModules; [
      desktop
      hardware
    ];
  };


  flake.nixosModules.desktop = {pkgs, ...}: {
    imports = with self.nixosModules; [
      # core configugration
      core

      # enviroment managment
      hjem
      stylix

      # services
      audio
      graphics
      greetd

      # terminal pacakges
      kitty
      cli
      programming
      neovim
      
      # desktop enviroment
      niri 
      DankMaterialShell
      
      # userland etc.
      gaming
      music
      zen
    ];

  };
}
