{
  programs.fd = {
    enable = true;
    hidden = true;
    ignores = [
      ".git/"
      "build/"
      "zephyrproject/"

      # Build directories
      "/build/"

      # Container specific files
      ".devcontainer/"

      # VSCode specific files
      ".vscode/"
      ".vscode/settings.json"
      ".vscode/c_cpp_properties.json"
      ".vscode/launch.json"
      ".vscode/tasks.json"

      # Python virtual environments
      # ".venv/"
      # "venv/"
      # "env/"
      "ENV/"
      "__pycache__/"
      "*.py[cod]"

      # OS generated files
      ".DS_Store"
      "Thumbs.db"
      "desktop.ini"

      # Debugger files
      "*.svd"

      # ccache files
      ".ccache"

      #cache files
      ".cache"

      # Dependency directories
      "node_modules/"
    ];
  };
}
