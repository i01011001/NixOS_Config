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
    (import ../../../customs/pkgs/diagslave {inherit pkgs;})
    (import ../../../customs/pkgs/miniterm {inherit pkgs;})
    (import ../../../customs/pkgs/modpoll {inherit pkgs;})
    # edl
    # qdl

    #### Wayland Native Tools
    swaybg
    swayimg
    swaylock
    swayidle
    # grim
    # slurp
    # xdg-desktop-portal-wlr
    # xdg-desktop-portal
    wl-clipboard
    wlr-randr
    wf-recorder
    xwayland-satellite

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
    (writeShellScriptBin "brightness_down" ''brightnessctl set 1%-'')
    (writeShellScriptBin "brightness_up" ''brightnessctl set 1%+'')
    (writeShellScriptBin "audio_up" ''wpctl set-volume @DEFAULT_SINK@ 2%+'')
    (writeShellScriptBin "audio_down" ''wpctl set-volume @DEFAULT_SINK@ 2%-'')
    (writeShellScriptBin "audio_toggle" ''wpctl set-mute @DEFAULT_SINK@ toggle'')
    (writeShellScriptBin "audio_mic_toggle" ''wpctl set-mute @DEFAULT_SOURCE@ toggle'')

    (writeShellScriptBin "enter_the_void" ''
      dbus-run-session niri --
    '')

    #### Custom Nix Packages
    (import ../nixcat/default.nix {
      inherit pkgs;
      inherit (inputs) nixCats;
    })

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
