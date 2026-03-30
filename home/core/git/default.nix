{lib, ...}: {
  programs.git = {
    enable = true;
    attributes = [];
    settings = {
      user = {
        name = "i01011001";
        email = "yugen.m7@gmail.com";
        # email = "yugen.maharjan@nepaldigisys.com";
        # name = "yugen-m7";
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
  # ──────────────── Build Artifacts ────────────────
  "build/"
  "out/"
  "Debug/"
  "Release/"
  "*.o"
  "*.d"
  "*.a"
  "*.so"
  "*.elf"
  "*.bin"
  "*.hex"
  "*.map"
  "*.lst"
  "*.log"

  # ──────────────── Dependency Artifacts ────────────────
  "*.dSYM/"
  "*.su"
  "*.idb"
  "*.pdb"

  # ──────────────── IDE / Editor ────────────────
  ".vscode/"
  ".idea/"
  "*.code-workspace"

  # Eclipse / STM32CubeIDE metadata
  ".project"
  ".cproject"
  ".settings/"

  # ──────────────── CMake (if used later) ────────────────
  "CMakeFiles/"
  "CMakeCache.txt"
  "cmake_install.cmake"
  "compile_commands.json"

  # ──────────────── Local Dev Environments ────────────────
  ".venv/"
  "venv/"
  "env/"
  "__pycache__/"
  "*.py[cod]"

  # Nix (ignore only if personal env)
  "shell.nix"

  # ──────────────── CCache / Build Cache ────────────────
  ".ccache/"
  ".cache/"

  # ──────────────── OS Junk ────────────────
  ".DS_Store"
  "Thumbs.db"
  "desktop.ini"

  # ──────────────── Temporary / Backup ────────────────
  "*.bak"
  "*.tmp"
  "*.swp"
  "*.swo"
  "*~"
  "*.orig"

  # ──────────────── Debug / Analysis Outputs ────────────────
  "*.trace"
  "*.dump"
  "*.gcda"
  "*.gcno"
  "*.gcov"
];
  };
}
