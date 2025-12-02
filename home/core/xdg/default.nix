{pkgs, ...}: {
  xdg = {
    autostart.enable = true;
    portal = {
      enable = true;
      xdgOpenUsePortal = false;
      extraPortals = with pkgs; [
        xdg-desktop-portal-wlr
      ];
      config = {
        common = {
          default = ["wlr"]; # Fallback to gtk for everything else
        };
        sway = {
          default = ["wlr"]; # Prioritize wlr, fallback to gtk
        };
      };
    };
  };

  # ---------------------------------------------------------------------
  # 1. GENERATE MISSING .DESKTOP FILES
  # ---------------------------------------------------------------------
  # Since Neovim and Yazi are terminal apps, we must create desktop entries
  # that tell the system to launch them inside 'foot'.

  xdg.desktopEntries = {
    # Wrapper for Neovim (launch in foot)
    nvim = {
      name = "Neovim";
      genericName = "Text Editor";
      exec = "foot -e nvim %F";
      terminal = false; # We handle the terminal manually above
      categories = ["Application" "Utility" "TextEditor"];
    };

    # Wrapper for Yazi (launch in foot)
    yazi = {
      name = "Yazi";
      genericName = "File Manager";
      exec = "foot -e yazi %F";
      terminal = false;
      categories = ["Application" "System" "FileTools" "FileManager" "ConsoleOnly"];
    };

    # Wrapper for Swayimg (Just in case the binary lacks a desktop file)
    swayimg = {
      name = "Swayimg";
      genericName = "Image Viewer";
      exec = "swayimg %F";
      terminal = false;
      categories = ["Application" "Graphics" "Viewer"];
      type = "Application";
    };
  };

  # ---------------------------------------------------------------------
  # 2. EXHAUSTIVE MIME TYPE MAPPING
  # ---------------------------------------------------------------------

  xdg.mimeApps = {
    enable = true;

    defaultApplications = {
      # --- BROWSER (Firefox) ---
      "text/html" = "firefox.desktop";
      "application/xhtml+xml" = "firefox.desktop";
      "x-scheme-handler/http" = "firefox.desktop";
      "x-scheme-handler/https" = "firefox.desktop";
      "x-scheme-handler/ftp" = "firefox.desktop";
      "x-scheme-handler/about" = "firefox.desktop";
      "x-scheme-handler/unknown" = "firefox.desktop";

      # --- FILE MANAGER (Yazi) ---
      "inode/directory" = "yazi.desktop";

      # --- IMAGES (Swayimg) ---
      "image/jpeg" = "swayimg.desktop";
      "image/png" = "swayimg.desktop";
      "image/gif" = "swayimg.desktop";
      "image/webp" = "swayimg.desktop";
      "image/svg+xml" = "swayimg.desktop";
      "image/bmp" = "swayimg.desktop";
      "image/tiff" = "swayimg.desktop";
      "image/avif" = "swayimg.desktop";
      "image/heif" = "swayimg.desktop";
      "image/heic" = "swayimg.desktop";
      "image/x-icon" = "swayimg.desktop";
      "image/x-xbitmap" = "swayimg.desktop";
      "image/x-xpixmap" = "swayimg.desktop";

      # --- DOCUMENTS (Zathura) ---
      "application/pdf" = "org.pwmt.zathura.desktop";
      "application/epub+zip" = "org.pwmt.zathura.desktop";
      "application/oxps" = "org.pwmt.zathura.desktop";
      "application/vnd.comicbook+zip" = "org.pwmt.zathura.desktop"; # .cbz
      "application/vnd.comicbook-rar" = "org.pwmt.zathura.desktop"; # .cbr
      "application/postscript" = "org.pwmt.zathura.desktop";

      # --- TEXT & CODE (Neovim) ---
      # General
      "text/plain" = "nvim.desktop";
      "text/markdown" = "nvim.desktop";
      "text/x-log" = "nvim.desktop";

      # Configuration
      "application/json" = "nvim.desktop";
      "application/x-yaml" = "nvim.desktop";
      "application/toml" = "nvim.desktop";
      "text/x-conf" = "nvim.desktop";
      "text/x-ini" = "nvim.desktop";

      # Scripts
      "application/x-shellscript" = "nvim.desktop"; # .sh
      "text/x-lua" = "nvim.desktop"; # .lua
      "text/x-python" = "nvim.desktop"; # .py
      "text/x-perl" = "nvim.desktop"; # .pl
      "text/x-ruby" = "nvim.desktop"; # .rb

      # Programming
      "text/x-nix" = "nvim.desktop"; # .nix
      "text/x-c" = "nvim.desktop";
      "text/x-c++" = "nvim.desktop";
      "text/x-csrc" = "nvim.desktop";
      "text/x-chdr" = "nvim.desktop";
      "text/x-go" = "nvim.desktop";
      "text/x-rust" = "nvim.desktop";
      "text/x-java" = "nvim.desktop";
      "text/x-cmake" = "nvim.desktop";
      "text/x-makefile" = "nvim.desktop";
    };
  };
}
