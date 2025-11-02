{lib, ...}: {
  programs.git = {
    enable = true;
    attributes = [];
    settings = {
      user = {
        name = "i01011001";
        email = "i01011001.m7@gmail.com";
      };
      merge.tool = "nvimdiff";
      diff = {
        tool = "nvimdiff";
      };
      core = {
        editor = "nvim -f";
      };
      color = {
        ui = "auto";
        status = "auto";
        branch = "auto";
        diff = "auto";
      };
    };
    ignores = [
      # ──────────────── ESP-IDF SDK Config Files ────────────────
      "sdkconfig"
      "sdkconfig.old"
      "sdkconfig.ci"

      # ──────────────── Build Artifacts ────────────────
      "build/"
      "*.bin"
      "*.elf"
      "*.map"
      "*.hex"
      "*.s"
      "*.lst"
      "*.o"
      "*.a"
      "*.d"
      "*.ld"
      "*.log"

      # ──────────────── Managed Components ────────────────
      "managed_components/"

      # ──────────────── IDE / Editor Specific ────────────────
      # VSCode
      ".vscode/"
      ".vscode/settings.json"
      ".vscode/c_cpp_properties.json"
      ".vscode/launch.json"
      ".vscode/tasks.json"

      # JetBrains (CLion / Rider)
      ".idea/"

      # ──────────────── Development Containers ────────────────
      ".devcontainer/"

      # ──────────────── Python / Scripts ────────────────
      ".venv/"
      "venv/"
      "env/"
      "ENV/"
      "__pycache__/"
      "*.py[cod]"
      "*.pyo"

      # ──────────────── CCache and Temporary Build Caches ────────────────
      ".ccache/"
      ".cache/"
      "cache/"

      # ──────────────── OS Generated Files ────────────────
      ".DS_Store"
      "Thumbs.db"
      "desktop.ini"

      # ──────────────── Dependency Directories ────────────────
      "node_modules/"
      "deps/"
      "third_party/"

      # ──────────────── Debugger / Analyzer Files ────────────────
      "*.svd"
      "*.trace"
      "*.dump"

      # ──────────────── Misc ────────────────
      "*.bak"
      "*.tmp"
      "*.swp"
      "*.swo"
      "*.orig"
    ];
  };
}
