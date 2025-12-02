{
  pkgs,
  inputs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    ############################################################
    ## Build Systems & Compilers
    ############################################################
    ccache
    clang-tools
    cmake
    gcc_latest
    gcc-arm-embedded
    gnumake
    go
    libgccjit
    ninja
    rustc
    zig
    cargo
    rust-analyzer
    rustfmt
    rustlings

    ############################################################
    ## Nix Ecosystem
    ############################################################
    alejandra
    nil
    nixd
    nix-index

    ############################################################
    ## Language Servers & Formatters
    ############################################################
    bash-language-server
    black
    cmake-language-server
    cmake-format
    gopls
    isort
    lua-language-server
    marksman
    pyright
    shfmt
    stylua
    taplo
    typescript-language-server
    prettier
    yamlfmt
    jq

    ############################################################
    ## Debugging & Profiling
    ############################################################
    bear
    cppcheck
    file
    gdb
    iaito
    radare2
    valgrind

    ############################################################
    ## Embedded & Electronics
    ############################################################
    kicad-unstable
    openocd
    saleae-logic-2
    stlink
    stlink-tool
    stm32cubemx
    stm32flash
    stm32loader
    (import ../customs/pkgs/diagslave {inherit pkgs;})
    (import ../customs/pkgs/miniterm {inherit pkgs;})
    (import ../customs/pkgs/modpoll {inherit pkgs;})

    ############################################################
    ## Networking, Security & Reverse Engineering
    ############################################################
    curl
    dig
    mosquitto
    netcat
    nmap
    socat
    sshfs
    websocat
    iw

    ############################################################
    ## Dev Environment & Tools
    ############################################################
    git
    go
    nodejs_22
    python3
    vscode
    luajit
    luarocks
    ngrok
    hubstaff
    gh
    mercurial

    ############################################################
    ## CLI Utilities
    ############################################################
    alsa-utils
    audacity
    brightnessctl
    cpulimit
    dconf
    dtc
    f3
    fastfetch
    hwinfo
    lshw
    man-pages
    ntfs3g
    p7zip
    playerctl
    rar
    rlwrap
    sqlite
    sqlitebrowser
    tree
    unzip
    usbutils
    usbtop
    wget
    zip
    smartmontools
    testdisk
    xdg-utils
    libnotify

    ############################################################
    ## Wayland Native Tools
    ############################################################
    sway
    swaybg
    swayimg
    swaylock
    wayland-utils
    wf-recorder
    wl-clipboard
    wl-mirror
    wlr-randr

    ############################################################
    ## Communication & Collaboration
    ############################################################
    slack
    thunderbird
    (discord.override {
      withOpenASAR = true;
      withVencord = true;
    })
    zoom
    anydesk

    ############################################################
    ## Multimedia & Graphics
    ############################################################
    blender
    digital
    ffmpeg-full
    gimp3
    imagemagick
    inkscape
    krita
    libreoffice
    mpv
    obs-studio
    pureref
    rnote
    saleae-logic-2
    satty
    kdePackages.kdenlive

    ############################################################
    ## Web & Misc
    ############################################################
    ungoogled-chromium
    tor-browser
    nwg-look
    betaflight-configurator
    woeusb
    wineWowPackages.staging
    winetricks
    putty
    cpulimit
    pyload-ng
    yt-dlp
    steam-run
    nautilus

    ############################################################
    ## Java / Android
    ############################################################
    (jdk11_headless.override {enableJavaFX = true;})
    scrcpy
    (writeShellScriptBin "scrcpy-custom" ''
      scrcpy -b 4M --max-size 1920 --max-fps 30 --turn-screen-off --render-driver=opengl --stay-awake
    '')

    ############################################################
    ## Arduino / Microcontrollers
    ############################################################
    arduino-cli
    arduino-ide

    ############################################################
    ## Custom Utility Scripts
    ############################################################
    (writeShellScriptBin "capture_whole" ''
      grim -g "$(slurp -o -r -c '##ffffffdd')" -t ppm - | \
      satty --filename - --fullscreen \
            --output-filename ~/media/images/Screenshots/satty-$(date '+%Y%m%d-%H:%M:%S').png
    '')
    (writeShellScriptBin "edit-image" ''
      wl-paste | satty --filename - --fullscreen \
        --output-filename ~/media/images/Screenshots/satty-$(date '+%Y%m%d-%H:%M:%S').png
    '')

    (writeShellScriptBin "notify-dismiss" ''
      makoctl dismiss
    '')

    (writeShellScriptBin "custom-notify-send" ''
      NID_FILE="$HOME/.cache/notify_id"

      if [ -f "$NID_FILE" ]; then
          NID_STR=$(cat "$NID_FILE")
          NID=$((NID_STR))
      else
          mkdir -p "$(dirname "$NID_FILE")"
          NID="0"
      fi

      notify-send "$1" -p -r "$NID" > "$NID_FILE"
    '')

    (writeShellScriptBin "brightness_notify" ''
      brightness=$(brightnessctl g)
      custom-notify-send "Brightness: $brightness"
    '')

    (writeShellScriptBin "audio_sink_notify" ''
      audio_sink=$(wpctl get-volume @DEFAULT_SINK@ | awk '{print $2 $3}')
       custom-notify-send "Audio Sink: $audio_sink"
    '')

    (writeShellScriptBin "audio_source_notify" ''
      audio_source=$(wpctl get-volume @DEFAULT_SOURCE@ | awk '{print $2 $3}')
       custom-notify-send "Audio Source: $audio_source"
    '')

    (writeShellScriptBin "brightness_down" ''brightnessctl set 2%-  && notify-widget'')
    (writeShellScriptBin "brightness_up" ''brightnessctl set 2%+ && notify-widget'')

    (writeShellScriptBin "audio_sink_up" ''wpctl set-volume @DEFAULT_SINK@ 2%+ &&  notify-widget'')
    (writeShellScriptBin "audio_sink_down" ''wpctl set-volume @DEFAULT_SINK@ 2%- &&    notify-widget '')
    (writeShellScriptBin "audio_sink_toggle" ''wpctl set-mute @DEFAULT_SINK@ toggle && notify-widget '')

    (writeShellScriptBin "audio_source_up" ''wpctl set-volume @DEFAULT_SOURCE@ 2%+ &&      notify-widget '')
    (writeShellScriptBin "audio_source_down" ''wpctl set-volume @DEFAULT_SOURCE@ 2%- &&    notify-widget'')
    (writeShellScriptBin "audio_source_notify" ''wpctl set-mute @DEFAULT_SOURCE@ toggle && notify-widget'')

    (writeShellScriptBin "notify-widget" ''
      capacity=$(< /sys/class/power_supply/BAT1/capacity)
      status=$(< /sys/class/power_supply/BAT1/status)
      brightness=$(brightnessctl g)
      audio_sink=$(wpctl get-volume @DEFAULT_SINK@ | awk '{print $2 $3}')
      audio_source=$(wpctl get-volume @DEFAULT_SOURCE@ | awk '{print $2 $3}')
      custom-notify-send "$capacity $status | $brightness | $audio_sink | $audio_source"
    '')

    (writeShellScriptBin "notify-time" ''custom-notify-send "$(date '+%H:%M:%S %A %d. %B %Y')" '')

    (writeShellScriptBin "notify-network" ''
      iface=$(ip route | awk '/default/ {print $5}' | head -n1)
      local_ip=$(ip -4 addr show "$iface" | awk '/inet / {print $2}' | cut -d/ -f1)
      ssid=$(iw dev "$iface" link | awk -F': ' '/SSID/ {print $2}')
      bitrate=$(iw dev "$iface" link | awk -F': ' '/tx bitrate/ {print $2}')
      signal=$(iw dev "$iface" link | awk '/signal:/ {print $2 " dBm"}')

      custom-notify-send "$iface | $ssid | $local_ip | $signal"
    '')

    ############################################################
    ## Extra
    ############################################################

    # nrfconnect
    # nrfconnect-bluetooth-low-energy
    lsof
    nrf-command-line-tools
    nvtopPackages.intel
    xxd

    # logisim-evolution
    transmission_4-gtk
    # conky
    # gamescope

    # inputs.cwc.packages.x86_64-linux.cwc
  ];

  ############################################################
  ## Udev Rules
  ############################################################
  services.udev.packages = with pkgs; [saleae-logic-2 stlink];
  services.udev.extraRules = ''
    SUBSYSTEM=="tty", ATTRS{idVendor}=="303a", ATTRS{idProduct}=="1001", \
      ATTRS{serial}=="D8:3B:DA:A3:FC:44", SYMLINK+="i01011001-s3_0"
  '';
}
