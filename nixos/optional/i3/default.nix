{pkgs, ...}: {
  services = {
    xserver = {
      enable = true;
      autorun = false;
      displayManager = {
        lightdm.enable = false;
        startx = {
          enable = true;
          extraCommands = ''
            i3
          '';
        };
      };

      desktopManager = {
        xterm.enable = false;
      };

      windowManager.i3 = {
        enable = true;
        extraPackages = with pkgs; [
          dmenu #application launcher most people use
          i3status # gives you the default i3 status bar
          i3lock #default i3 screen locker
          i3blocks #if you are planning on using i3blocks over i3status
        ];
      };
    };
    displayManager = {
      defaultSession = "none+i3";
    };
  };

}
