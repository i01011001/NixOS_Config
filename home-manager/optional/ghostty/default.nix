{
	programs.ghostty= {
		enable = true;
		enableZshIntegration = true;
		settings = {
			font-family = "Iosevka Nerd Font";
			font-style = "Medium";
			font-size = 10;
			window-decoration = false;
			gtk-tabs-location = "bottom";
			resize-overlay = "never";
			theme = "void";

			confirm-close-surface = false;
			window-padding-balance = true;
			window-padding-x = 5;
			window-padding-y = 3;

			shell-integration = "zsh";
			shell-integration-features = "no-cursor";
			gtk-single-instance = true ;
			window-theme = "ghostty";
			custom-shader-animation = false;

			linux-cgroup = "never";
		};
		themes = {
			void = {
				background = "000000";
				foreground = "fdfdfd";
				palette = [
					"0=#303030"
						"1=#bf656E"
						"2=#83ad84"
						"3=#dbc68c"
						"4=#6286ad"
						"5=#8782af"
						"6=#7dafac"
						"7=#B0B0B0"
						"8=#505050"
						"9=#bf646d"
						"10=#83ad84"
						"11=#dbc68c"
						"12=#6286ad"
						"13=#8782af"
						"14=#7dafac"
						"15=#f0f0f0"
				];
			};
		};

# xdg.configFile."ghostty" = {
# 	source = ./ghostty;
# 	recursive = true;
# };
	};
}
