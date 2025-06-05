{
  pkgs,
  lib,
  config,
  ...
}: let
  colors = config.lib.stylix.colors;
  get_color = color: "#${color}";
in {
  programs.neovim = {
    extraLuaConfig = ''
      local colors = {
          dark_0 = "${get_color colors.base00}",
          dark_1 = "${get_color colors.base01}",
          dark_2 = "${get_color colors.base02}",
          dark_3 = "${get_color colors.base03}",
          light_0 = "${get_color colors.base04}",
          light_1 = "${get_color colors.base05}",
          light_2 = "${get_color colors.base06}",
          light_3 = "${get_color colors.base07}",

          red = "${get_color colors.base08}",
          orange = "${get_color colors.base09}",
          yellow = "${get_color colors.base0A}",
          green = "${get_color colors.base0B}",
          cyan = "${get_color colors.base0C}",
          blue = "${get_color colors.base0D}",
          magenta = "${get_color colors.base0E}",
          violet = "${get_color colors.base0F}",

          diffadd = "#b1c89d",
          difftext = "#81a1c1",
          diffchange = "#9fc6c5",
          diffdelete = "#c5727a",
      };

      ${builtins.readFile ./colorscheme.lua}
    '';
  };
}
