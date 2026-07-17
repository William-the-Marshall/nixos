{
  flake.nixosModules.niri = { pkgs, ... }: {

    environment.systemPackages = with pkgs; [
      wl-clipboard wtype
      xdg-desktop-portal-gtk xdg-desktop-portal-gnome
      xwayland-satellite

      grim slurp swappy
      wf-recorder
      brightnessctl

      adw-gtk3
      gnome-themes-extra
      papirus-icon-theme
    ];

    programs.niri.enable = true;
    security.polkit.enable = true;
    services.gnome.gnome-keyring.enable = true;

    xdg.portal.config = {
      common = {
        default = [
          "gtk"
          "gnome"
        ];
      };
    };

    environment.sessionVariables = {
      NIXOS_OZONE_WL = "1";
    };

    hjem.users.jonf = {
      files = {
        ".config/niri/config.kdl".source = ./configs/config.kdl;
        ".config/niri/dms/binds.kdl".source = ./configs/dms/binds.kdl;
        ".config/niri/dms/colors.kdl".source = ./configs/dms/colors.kdl;
        ".config/niri/dms/outputs.kdl".source = ./configs/dms/outputs.kdl;
        ".config/niri/dms/cursor.kdl".source = ./configs/dms/cursor.kdl;
        ".config/niri/dms/windowrules.kdl".source = ./configs/dms/windowrules.kdl;
        ".config/niri/dms/alttab.kdl".source = ./configs/dms/alttab.kdl;
        ".config/niri/dms/layout.kdl".source = ./configs/dms/layout.kdl;
      };
    };

  };
}
