{
  pkgs,
  inputs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    #### Compilers & Build Tools
    cargo
    ccache
    # clang
    # clang-tools
    cmake
    gnumake
    gcc-arm-embedded
    libgccjit
    go
    gcc
    ninja
    zig
    # pyright
    # lua-language-server
    # gopls

    #### Debugging & Profiling
    bear
    gdb
    valgrind
    cppcheck
    radare2
    iaito
    file

    #### Development Environment
    vscode
    # deno
    nodejs_22
    luajit
    luarocks
    python3
    # python3Packages.pip
    # postman
    ngrok

    #### Package Management & Version Control
    nix-index
    wget
    git

    #### Embedded Development
    stm32cubemx
    stm32flash
    stm32loader
    openocd
    stlink
    stlink-tool
    segger-jlink
    kicad-unstable
    (import ../../../customs/pkgs/diagslave {inherit pkgs;})
    (import ../../../customs/pkgs/miniterm {inherit pkgs;})
    (import ../../../customs/pkgs/modpoll {inherit pkgs;})
    # edl
    # qdl

    #### Wayland Native Tools
    swayimg
    # swaybg
    # swaylock
    # swayidle
    wl-clipboard
    wlr-randr
    wf-recorder
    wayland-utils

    #### Productivity & Utilities
    unzip
    zip
    tree
    sqlite
    sqlitebrowser
    ntfs3g
    transmission_4-gtk
    # rpi-imager
    system-config-printer
    usbutils
    alsa-utils
    brightnessctl
    libnotify
    playerctl
    postgresql
    mpv
    ffmpeg-full

    #### Communication & Collaboration
    slack
    (discord.override {
      withOpenASAR = true;
      withVencord = true;
    })

    thunderbird

    #### Graphics & Media
    blender
    gimp3
    krita
    imagemagick
    rnote
    pureref
    saleae-logic-2
    digital

    #### Reverse Engineering & Security
    nmap
    mosquitto
    websocat
    netcat
    sshfs
    curl

    #### Windows Compatibility
    wineWowPackages.unstable
    winetricks
    putty
    woeusb

    #### CLI Tools
    cpulimit
    dconf
    dtc
    fastfetch
    lshw
    man-pages
    rlwrap
    # audacity
    f3
    rar
    p7zip

    #### Custom Shortcuts & Scripts

    (writeShellScriptBin "capture_whole" ''grim -g "$(slurp -o -r -c '##ffffffdd')" -t ppm - | satty --filename - --fullscreen --output-filename ~/media/images/Screenshots/satty-$(date '+%Y%m%d-%H:%M:%S').png'')
    (writeShellScriptBin "brightness_down" ''brightnessctl set 2%-'')
    (writeShellScriptBin "brightness_up" ''brightnessctl set 2%+'')
    (writeShellScriptBin "audio_up" ''wpctl set-volume @DEFAULT_SINK@ 2%+'')
    (writeShellScriptBin "audio_down" ''wpctl set-volume @DEFAULT_SINK@ 2%-'')
    (writeShellScriptBin "audio_toggle" ''wpctl set-mute @DEFAULT_SINK@ toggle'')
    (writeShellScriptBin "audio_mic_toggle" ''wpctl set-mute @DEFAULT_SOURCE@ toggle'')

    # (writeShellScriptBin "notifybattery" ''notify-send "Capacity" "`echo $(cat /sys/class/power_supply/BAT1/capacity & cat /sys/class/power_supply/BAT1/status)`"'')
    # (writeShellScriptBin "notifybrightness" ''notify-send "Brightness" "`brightnessctl g`"'')
    # (writeShellScriptBin "notifytime" ''notify-send  "`date +%H:%M`" "`date +%A` `date +%d`. `date +%B`"'')
    # (writeShellScriptBin "notifyvolume" ''notify-send "Volume" "`wpctl get-volume @DEFAULT_SINK@ | tr -d Volume:\ `"'')

    (writeShellScriptBin "notify-widget" ''notify-send "`echo $(cat /sys/class/power_supply/BAT1/capacity & cat /sys/class/power_supply/BAT1/status)` | `brightnessctl g` | `wpctl get-volume @DEFAULT_SINK@ | tr -d Volume:\ ` | `date +%H:%M` `date +%A` `date +%d`. `date +%B` " '')
    (writeShellScriptBin "notify-network" ''
      iface=$(ip route | awk '/default/ {print $5}' | head -n1)
      local_ip=$(ip -4 addr show "$iface" | awk '/inet / {print $2}' | cut -d/ -f1)
      if iw dev "$iface" info &>/dev/null; then
          ssid=$(iw dev "$iface" link | awk -F': ' '/SSID/ {print $2}')
          bitrate=$(iw dev "$iface" link | awk -F': ' '/tx bitrate/ {print $2}')
          signal=$(iw dev "$iface" link | awk '/signal:/ {print $2 " dBm"}')
          notify-send "$ssid | $local_ip | $signal"
      else
          notify-send "$iface | $local_ip"
      fi
    '')

    ####
    ungoogled-chromium
    usbtop
    hwinfo
    # gpsd

    libreoffice
    tor-browser
    nwg-look

    (jdk11_headless.override {enableJavaFX = true;})

    qtcreator
    qt6.full
    qt5.full

    hubstaff
    satty
    betaflight-configurator
    # zenity
    # protontricks
    nvtopPackages.full

    arduino-ide
    arduino-cli

    scrcpy

    # cutecom
    # kitty

    obs-studio
    # (inputs.pinnacle.devShell.x86_64-linux)
    nautilus

    steam-run
    testdisk
    iw
    gemini-cli
    nstool
    taskwarrior3
    timewarrior
    whatsapp-for-linux
    programmer-calculator
    jq
    yt-dlp


    # wideriver
    # dwl
  ];

  # services.xserver.displayManager.sessionPackages = [pkgs.sway];

  services.udev.packages = with pkgs; [
    saleae-logic-2
    stlink
    # edl
  ];

  services.udev.extraRules = ''
    SUBSYSTEM=="tty", ATTRS{idVendor}=="303a", ATTRS{idProduct}=="1001", SYMLINK+="my_serial_device"
  '';
}
