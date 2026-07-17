{
  flake.nixosModules.programming = { pkgs, ... }: {

    environment.systemPackages = with pkgs; [
      gcc
      nautilus
      gnumake
      cmake
      go
      cargo rustc
      delve
      python3
      gopls
      lua-language-server
      nil
      nixpkgs-fmt
      lua-language-server
    ];
  };
}
