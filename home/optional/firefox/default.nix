{
  pkgs,
  inputs,
  ...
}: let
  firefoxSettings = {
    "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
    "svg.context-properties.content.enabled" = true;
    "browser.uidensity" = 1;
    "browser.compact.show" = true;
    "browser.compactmode.show" = true;
    "sidebar.animation.enabled" = false;
    "sidebar.verticalTabs" = true;
    "sidebar.visibility" = "hide-sidebar";
    "sidebar.position_start" = true;
    "font.minimum-size.x-western" = 10;
    "sidebar.revamp.round-content-area" = false;
  };
in {
  programs.firefox = {
    enable = true;
    package = inputs.firefox-nightly.packages.${pkgs.system}.firefox-nightly-bin;
    profiles = {
      i01011001 = {
        id = 0;
        isDefault = true;
        settings = firefoxSettings;
        userChrome = builtins.readFile ./nightly.css;
      };
      i01011001_work = {
        id = 1;
        isDefault = false;
        settings = firefoxSettings;
        userChrome = builtins.readFile ./nightly.css;
      };
    };
  };
}
