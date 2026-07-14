{
  flake.nixosModules.core = { pkgs, ... }: {

# Core Settings
    nixpkgs.config.allowUnfree = true;
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

# Boot Settings
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;
    boot.kernelPackages = pkgs.linuxPackages_latest;

# Networking & Locales
    networking.networkmanager.enable = true;

    time.timeZone = "America/Los_Angeles";
    
    i18n.defaultLocale = "en_US.UTF-8";
    i18n.extraLocaleSettings = {
      LC_ADDRESS = "en_US.UTF-8";
      LC_IDENTIFICATION = "en_US.UTF-8";
      LC_MEASUREMENT = "en_US.UTF-8";
      LC_MONETARY = "en_US.UTF-8";
      LC_NAME = "en_US.UTF-8";
      LC_NUMERIC = "en_US.UTF-8";
      LC_PAPER = "en_US.UTF-8";
      LC_TELEPHONE = "en_US.UTF-8";
      LC_TIME = "en_US.UTF-8";
    };

# Configure keymap
    services.xserver = {
      xkb.layout = "us";
      xkb.variant = "";
    };

# User Accounts
    users.users.jonf = {
      isNormalUser = true;
      description = "jonf";
      extraGroups = [ "wheel" "networkmanager" ];
    };

    hjem.users = {
      jonf = {
        user = "jonf";
        directory = "/home/jonf";
      };
    };
# User Shells
    programs.zsh.enable = true;
    users.defaultUserShell = pkgs.zsh;

# Environment Packages
    environment.systemPackages = with pkgs; [
      neovim
      git
      curl
      wget
    ];

    system.stateVersion = "26.05";

  };
}
