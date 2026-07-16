{
  flake.nixosModules.music = { pkgs, ... }: {

    environment.systemPackages = with pkgs; [
      nicotine-plus
      tauon
    ];

  };
}
