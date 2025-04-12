{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    # autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      update_online = "sudo nixos-rebuild switch --verbose && rm -rf ~/.cache/tofi-drun";
      update = "sudo nixos-rebuild switch --verbose --offline && rm -rf ~/.cache/tofi-drun";
      source_idf = "source $HOME/code/esp/esp-idf/export.sh";
      source_matter = "source $HOME/code/esp/esp-matter/export.sh";
      source_zephyr = "source $HOME/code/zephyrproject/.venv/bin/activate && source $HOME/code/zephyrproject/zephyr/zephyr-env.sh && source $HOME/code/zephyrproject/zephyr/scripts/west_commands/completion/west-completion.zsh";
      nixc = "cd /etc/nixos/ && nvim .";
    };
    history = {
      size = 10000;
      path = "$HOME/.cache/zsh/history";
    };
    initExtraFirst = builtins.readFile ./zsh;
  };
}
