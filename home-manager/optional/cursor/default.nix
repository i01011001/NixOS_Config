{ pkgs, ... }:
{
  home.pointerCursor = {
    # name = "phinger-cursors-light";
    # package = pkgs.phinger-cursors;
    # size = 32;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic-Right";
    size = 24;
  };
}
