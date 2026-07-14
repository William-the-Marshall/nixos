{
  flake.nixosModules.cli = { pkgs, ... }: {

    environment.systemPackages = with pkgs; [
      jq ripgrep fd btop fzf gh
      zip unzip bat dig tldr fastfetch ncdu
      qemu
    ];

    programs.neovim.enable = true;
    programs.yazi.enable = true;
    programs.nh.enable = true;

    programs.git = {
      enable = true;
      config = {
        user.name = "Jonathon Frye";
        user.email = "jdfrye96@gmail.com";
        init.defaultBranch = "main";
        core.editor = "nvim";
        pull.rebase = true;
      };
    };

  };
}
