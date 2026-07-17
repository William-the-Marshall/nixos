{inputs, ...}: {

  flake-file.inputs ={
    DankMaterialShell = {
      url = "github:AvengeMedia/DankMaterialShell/stable";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  flake.nixosModules.DankMaterialShell = {pkgs, lib, ...}: {

    environment.systemPackages = with pkgs; [
      inputs.DankMaterialShell.packages.${pkgs.stdenv.hostPlatform.system}.default
      evtest
      bemenu
    ];
    
    programs.dank-material-shell = {
      enable = true;

      systemd = {
        enable = true;
        restartIfChanged = true;
      };
      
      enableSystemMonitoring = true;
      enableVPN = true;
      enableDynamicThemeing = true;
      enableAudioWavelength = true;

    };

    services.tuned.enable = true;
    services.upower.enable = true;

    hjem.users.jonf = {
      files = {
        ".config/DankMaterialShell/settings.json".source = ./settings.json;
      };
    };

  };
}

