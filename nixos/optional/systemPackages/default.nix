{ pkgs, inputs, ... }:{
  environment.systemPackages = with pkgs; [
    #### Compilers & Build Tools
    cargo
    ccache
    # clang
    # clang-tools
    cmake
    gnumake
    gcc-arm-embedded
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
    deno
    nodejs_22
    luajit
    luarocks
    python3
    # python3Packages.pip
    postman
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
    (import ../../../customs/pkgs/diagslave { inherit pkgs; })
    (import ../../../customs/pkgs/miniterm { inherit pkgs; })
    (import ../../../customs/pkgs/modpoll { inherit pkgs; })
    # edl
    # qdl

    #### Wayland Native Tools
    swaybg
    swayimg
    wl-clipboard
    wlr-randr
    wf-recorder

    #### Productivity & Utilities
    unzip
    zip
    tree
    sqlite
    sqlitebrowser
    ntfs3g
    transmission_4-gtk
    rpi-imager
    system-config-printer
    usbutils
    alsa-utils
    brightnessctl
    libnotify
    playerctl
    postgresql
    mpv

    #### Communication & Collaboration
    slack
    discord-unstable
    thunderbird


    #### Graphics & Media
    blender
    gimp
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
    audacity
    f3
    rar
    p7zip

    #### Custom Shortcuts & Scripts

(writeShellScriptBin "capture_whole" ''flameshot gui -p ~/media/images/screenshots/ -r | wl-copy'')
(writeShellScriptBin "brightnessdown" ''brightnessctl set 1%-'')
(writeShellScriptBin "brightnessup" ''brightnessctl set 1%+'')
(writeShellScriptBin "volumeup" ''wpctl set-volume @DEFAULT_SINK@ 2%+'')
(writeShellScriptBin "volumedown" ''wpctl set-volume @DEFAULT_SINK@ 2%-'')
(writeShellScriptBin "volumemute" ''wpctl set-mute @DEFAULT_SINK@ toggle'')
(writeShellScriptBin "notifybattery" ''notify-send "Capacity" "`echo $(cat /sys/class/power_supply/BAT1/capacity & cat /sys/class/power_supply/BAT1/status)`"'')
(writeShellScriptBin "notifybrightness" ''notify-send "Brightness" "`brightnessctl g`"'')
(writeShellScriptBin "notifytime" ''notify-send  "`date +%H:%M`" "`date +%A` `date +%d`. `date +%B`"'')
(writeShellScriptBin "notifyvolume" ''notify-send "Volume" "`wpctl get-volume @DEFAULT_SINK@ | tr -d Volume: `"'')

    #### Custom Nix Packages
    (import ../nixcat/default.nix { inherit pkgs; inherit (inputs) nixCats; })

    #### 
    ungoogled-chromium
    usbtop
    hwinfo
    # gpsd

    libreoffice
    tor-browser
    dwl
    nwg-look

    (jdk11_headless.override { enableJavaFX = true; })
    qtcreator
    sway
    # uuu
  ];

  services.udev.packages = with pkgs; [
    saleae-logic-2
    stlink
    # edl
  ];
}
