{
  programs = {
    foot = {
      enable = true;
      settings = {
        main = {
          # font = "Iosevka Nerd Font: size=10: weight=medium";
          font = "Iosevka Nerd Font: size=10, ";
          # font = "Noto Sans CJK TC: size=10";
          # line-height = 13.5;
        resize-delay-ms=100;
          pad = "5x3 center";
          # term = "foot";
          # title = "Foot";
        };
        colors = {
          # alpha = 1;
          background = "000000";
          foreground = "E0E0E0";

          regular0 = "303030";
          regular1 = "bf656E";
          regular2 = "83ad84";
          regular3 = "dbcc8c";
          regular4 = "6286ad";
          regular5 = "8782af";
          regular6 = "7dafac";
          regular7 = "B0B0B0";

          bright0 = "505050";
          bright1 = "bf646d";
          bright2 = "83ad84";
          bright3 = "dbcc8c";
          bright4 = "6286ad";
          bright5 = "8782af";
          bright6 = "7dafac";
          bright7 = "d0d0d0";
        };
        scrollback = {
          lines = 5000;
          multiplier = 2;
          indicator-format = "percentage";
          indicator-position = "fixed";
        };
        cursor = {
          style = "block";
          blink = "yes";
          beam-thickness = 1;
        };
        mouse = {
            hide-when-typing = "yes";
            };
      };
    };
  };
}
