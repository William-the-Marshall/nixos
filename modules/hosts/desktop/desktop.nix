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
      vicinae

      # terminal pacakges
      kitty
      cli
      programming
      neovim
      
      # desktop enviroment
      niri 
      noctalia
      
      # userland etc.
      gaming
      music

    ];

  };
}
