{ pkgs, ... }:
{
  xsession = {
    enable = true;
    windowManager.awesome = {
      enable = true;
      luaModules = with pkgs; [
        luarocks
      ];
    };
  };
  xdg.configFile = {
    "awesome" = {
      source = ./config;
      recursive = true;
    };
    # "awesome/rc.lua" = {
    # 		source = ./rc.lua;
    # 	};
    "../.xinitrc" = {
      source = ./xinitrc;
    };
  };
}
