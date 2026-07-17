{inputs, ...}: {

  flake-file.inputs = {
    DankMaterialShell = {
      url = "github:AvengeMedia/DankMaterialShell/stable";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  flake.nixosModules.DankMaterialShell = {pkgs, lib, ...}: {
    imports = [ inputs.DankMaterialShell.nixosModules.dank-material-shell ];

    programs.dank-material-shell = {
      enable = true;

      systemd = {
        enable = true;           # autostart via systemd user service
        restartIfChanged = true; # restart dms.service when the module changes
      };

      enableSystemMonitoring = true;  # dgop
      enableDynamicTheming = true;    # matugen
      enableAudioWavelength = true;   # cava
    };

    environment.systemPackages = with pkgs; [
      evtest
      bemenu
    ];

    services.tuned.enable = true;
    services.upower.enable = true;

    hjem.users.jonf = {
      files = {
        ".config/DankMaterialShell/settings.json".source = ./settings.json;
      };
    };

  };
}

