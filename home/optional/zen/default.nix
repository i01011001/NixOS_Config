{inputs, ...}: {
  # home.nix
  imports = [
    inputs.zen-browser.homeModules.beta
    # or inputs.zen-browser.homeModules.twilight
    # inputs.zen-browser.homeModules.twilight-official
  ];

  programs.zen-browser = {
    enable = true;
    setAsDefaultBrowser = true;
  };
}

## zen.theme.content-element-separation :: 0
## zen.view.experimental-no-window-controls :: true
## browser.display.background_color :: #161616

## zen.theme.gradient.show-custom-colors :: true
## zen.window-sync.enabled :: false
## zen.theme.accent-color ::	#161616

## devtools.debugger.remote-enabled :: true
## devtools.chrome.enabled :: true
## toolkit.legacyUserProfileCustomizations.stylesheets :: true
