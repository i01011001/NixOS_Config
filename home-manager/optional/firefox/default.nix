{ pkgs, inputs, ... }:
{
	programs = {
		firefox = {
			enable = true;
			package = inputs.firefox-nightly.packages.${pkgs.system}.firefox-nightly-bin;
# package = pkgs.latest.firefox-nightly-bin;
			profiles = {
				delta = {
					settings = {
						"toolkit.legacyUserProfileCustomizations.stylesheets" = true;
						"browser.uidensity" = 1;
						"browser.compact.show" = true;
						"browser.compactmode.show" = true;
						"sidebar.animation.enabled" = false;
						"sidebar.verticalTabs" = true;
						# "sidebar.visibility" = "hide-sidebar";
						"sidebar.position_start" = true;
						"font.minimum-size.x-western" = 10;
						"font.size.variable.x-western" = 12;
						"sidebar.revamp.round-content-area" = false;
					};
					userChrome = builtins.readFile ./nightly.css;
				};
			};
		};
	};
}
