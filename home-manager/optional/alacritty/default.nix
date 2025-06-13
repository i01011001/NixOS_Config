{
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        padding = {
          x = 5;
          y = 5;
        };
        # dynamic_padding = true;
        decorations = "None";
      };
      # font = {
      #   normal = {
      #     # family = "Mononoki Nerd Font Mono";
      #     # family = "Mononoki Nerd Font";
      #     family = "Iosevka Nerd Font";
      #     style = "Medium";
      #   };
      #   size = 10;
      #   # offset = {
      #   #   y = -1;
      #   # };
      # };
      keyboard = {
        bindings = [
          {
            key = "N";
            mods = "Control|Shift";
            action = "SpawnNewInstance";
          }
        ];
      };
      # colors = {
      #   primary = {
      #     background = "#000000";
      #     foreground = "#e0e0e0";
      #   };
      #   normal = {
      #     black = "#303030";
      #     red = "#bf656e";
      #     green = "#83ad84";
      #     yellow = "#dbcc8c";
      #     blue = "#6286ad";
      #     magenta = "#8782af";
      #     cyan = "#7dafac";
      #     white = "#c0c0c0";
      #   };
      #   bright = {
      #     black = "#606060";
      #     red = "#bf656e";
      #     green = "#83ad84";
      #     yellow = "#dbcc8c";
      #     blue = "#6286ad";
      #     magenta = "#8782af";
      #     cyan = "#7dafac";
      #     white = "#f0f0f0";
      #   };
      # };
    };
  };
}
