  {
	services.mosquitto = {
    enable = true;
	# package = pkgs.mosquitto;
    # listeners = [
    #   {
    #     acl = [ "pattern readwrite #" ];
    #     omitPasswordAuth = true;
    #     settings.allow_anonymous = true;
    #   }
    # ];
  };
}
