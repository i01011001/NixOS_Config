{
	programs.kitty = { 
		enable = true;
		extraConfig = builtins.readFile ./kitty.conf;
		# font = {
		# 	name = "Iosevka Nerd Font";
		# 	size = 10;
		# };
	};
}
