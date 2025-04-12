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
    python3Packages.pip
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
    (import ../../../customs/pkgs/diagslave { inherit pkgs; })
    (import ../../../customs/pkgs/miniterm { inherit pkgs; })
    (import ../../../customs/pkgs/modpoll { inherit pkgs; })
    edl
    qdl

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
    skypeforlinux
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
    sshfs

    #### Windows Compatibility
    wineWowPackages.staging
    wineWowPackages.waylandFull
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
    (import ../../../customs/pkgs/shortcuts/capture/section.nix { inherit pkgs; })
    (import ../../../customs/pkgs/shortcuts/capture/whole.nix { inherit pkgs; })
    (import ../../../customs/pkgs/shortcuts/control/brightnessdown.nix { inherit pkgs; })
    (import ../../../customs/pkgs/shortcuts/control/brightnessup.nix { inherit pkgs; })
    (import ../../../customs/pkgs/shortcuts/control/volumeup.nix { inherit pkgs; })
    (import ../../../customs/pkgs/shortcuts/control/volumedown.nix { inherit pkgs; })
    (import ../../../customs/pkgs/shortcuts/control/volumemute.nix { inherit pkgs; })
    (import ../../../customs/pkgs/shortcuts/notify/battery.nix { inherit pkgs; })
    (import ../../../customs/pkgs/shortcuts/notify/brightness.nix { inherit pkgs; })
    (import ../../../customs/pkgs/shortcuts/notify/time.nix { inherit pkgs; })
    (import ../../../customs/pkgs/shortcuts/notify/volume.nix { inherit pkgs; })

    #### Custom Nix Packages
    (import ../nixcat/default.nix { inherit pkgs; inherit (inputs) nixCats; })

    #### 
    ungoogled-chromium
    usbtop
    hwinfo
    gpsd

    libreoffice
    tor-browser

    uuu
  ];

  services.udev.packages = with pkgs; [
    saleae-logic-2
    stlink
    edl
  ];
}
