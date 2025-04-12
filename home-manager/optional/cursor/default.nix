{ pkgs, ... }:
{

  home.pointerCursor = {
    name = "phinger-cursors-dark";
    package = pkgs.phinger-cursors;
    size = 24;
    # package = pkgs.bibata-cursors;
    # name = "Bibata-Modern-Classic";
    # size = 16;
  };
}
