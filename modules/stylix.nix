{inputs, ...}: {
  flake-file.inputs.stylix = {
    url = "github:nix-community/stylix";
    inputs.nixpkgs.follows = "nixpkgs";
  };
  flake.nixosModules.stylix = {pkgs, inputs, ...}: {
    imports = [inputs.stylix.nixosModules.stylix];

    stylix.enable = true;
    stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/tokyo-night-storm.yaml";
    stylix.polarity = "dark";

    stylix.cursor = {
      package = pkgs.everforest-cursors;
      name = "Everforest-Cursors";
      size = 24;
    };

    stylix.fonts = {
      serif = {
        package = pkgs.jetbrains-mono;
        name = "Jetbrains-Mono";
      };
      sansSerif = {
        package = pkgs.jetbrains-mono;
        name = "Jetbrains-Mono";
      };
      monospace = {
        package = pkgs.jetbrains-mono;
        name = "Jetbrains-Mono";
      };
      emoji = {
        package = pkgs.noto-fonts-color-emoji;
        name = "Noto Color Emoji";
      };
    };
  };
}
