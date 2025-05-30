{pkgs, ...}:{
  environment = {
    pathsToLink = [ "/share/zsh" ];
    variables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
      FUNCNEST = 1000;

      XDG_PICTURES_DIR = "~/media/images/";

    };
  };
}
