{ pkgs, ... }:
{
	services.printing = {
		enable = true;
		cups-pdf.enable = true;
		startWhenNeeded = false;
		drivers = [
# (pkgs.callPackage ../pkgs/driver/dcpj125.nix {inherit pkgs;})
			pkgs.gutenprint
				(import ../../../customs/driver/dcpj125.nix { inherit pkgs; }).driver
				(import ../../../customs/driver/dcpj125.nix { inherit pkgs; }).cupswrapper
				pkgs.brlaser # — Drivers for some Brother printers
				pkgs.brgenml1lpr #  — Generic drivers for more Brother printers [1]
				pkgs.brgenml1cupswrapper  # — Generic drivers for more Brother printers [1]
		];
		extraConf = ''
			ErrorPolicy retry-job
			'';
	};

# 	hardware.printers = {
# 		ensureDefaultPrinter = "DCP-J125";
# 		ensurePrinters = [
# 		{
# 			name = "DCP-J125";
# 			location = "Home";
# 			deviceUri = "usb://Brother/DCP-J125?serial=BROE2F352003";
# # model = "drv:///sample.drv/generic.ppd";
# 			model = "brother_dcpj125_printer_en.ppd";
# 			ppdOptions = {
# 				PageSize = "A4";
# 			};
# 		}
# 		];
# 	};
}
