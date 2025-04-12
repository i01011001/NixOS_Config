{ pkgs, inputs, ... }:
{
  programs.wezterm = {
    enable = true;
    package = inputs.wezterm-flake.packages."${pkgs.system}".default;
    colorSchemes = {
      i01011001 = {
        ansi = [
          "#303030"
          "#bf656e"
          "#83ad84"
          "#dbcc8c"
          "#6286ad"
          "#8782af"
          "#7dafac"
          "#c0c0c0"
        ];
        brights = [
          "#606060"
          "#bf656e"
          "#83ad84"
          "#dbc68c"
          "#6286ad"
          "#8782af"
          "#7dafac"
          "#f0f0f0"
        ];
        background = "#000000";
        # cursor_bg = "#000000";
        # cursor_border = "#dddddd";
        # cursor_fg = "#dddddd";
        foreground = "#dddddd";
        selection_bg = "#303030";
        selection_fg = "#E9E9E9";
      };
    };
    # extraConfig = builtins.readFile ./wezterm.lua;
  };
  xdg.configFile."wezterm/wezterm.lua".source = ./wezterm.lua;
}
