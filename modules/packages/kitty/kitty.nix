{
  flake.nixosModules.kitty = { pkgs, lib, ... }: {

    environment.systemPackages = with pkgs; [
      kitty
    ];

    hjem.users.jonf = {
      files = {
        ".config/kitty/kitty.conf".source = ./kitty.conf;
      };
    };
  };
}
