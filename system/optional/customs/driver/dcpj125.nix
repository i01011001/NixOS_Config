{pkgs, ...}: let
  version = "1.1.3-1";
  model = "dcpj125";
in
  with pkgs; {
    driver = stdenv.mkDerivation {
      pname = model;
      version = version;
      src = fetchurl {
        url = "https://download.brother.com/welcome/dlf005583/${model}lpr-${version}.i386.deb";
        sha256 = "sha256-eWjbyYoZRzBkGTPrl83pOdNoAmKc9gev9EEupckAP40=";
      };
      nativeBuildInputs = [
        dpkg
        makeWrapper
      ];
      buildInputs = [
        cups
        ghostscript
        a2ps
        gawk
      ];
      unpackPhase = "dpkg-deb -x $src $out";

      installPhase = ''
        substituteInPlace $out/opt/brother/Printers/${model}/lpd/filter${model} \
        --replace /opt "$out/opt"

        patchelf --set-interpreter $(cat $NIX_CC/nix-support/dynamic-linker) \
        $out/opt/brother/Printers/${model}/lpd/br${model}filter

        mkdir -p $out/lib/cups/filter/
        ln -s $out/opt/brother/Printers/${model}/lpd/filter${model} $out/lib/cups/filter/brlpdwrapper${model}

        wrapProgram $out/opt/brother/Printers/${model}/lpd/filter${model} \
          --prefix PATH ":" ${
          lib.makeBinPath [
            gawk
            ghostscript
            a2ps
            file
            gnused
            gnugrep
            coreutils
            which
          ]
        }
      '';
      meta = with lib; {
        homepage = "http://www.brother.com/";
        description = "Brother ${model} printer driver";
        sourceProvenance = with sourceTypes; [binaryNativeCode];
        license = licenses.unfree;
        platforms = platforms.linux;
        downloadPage = "https://support.brother.com/g/b/downloadlist.aspx?c=gb&lang=en&prod=${model}_all&os=128";
      };
    };
    cupswrapper = stdenv.mkDerivation {
      pname = "${model}-cupswrapper";
      inherit version;

      src = fetchurl {
        url = "https://download.brother.com/welcome/dlf005585/${model}cupswrapper-${version}.i386.deb";
        sha256 = "sha256-H/ByGjWmD03en1dN/ZomxBnQrehiFapNiO15ypWegYQ=";
      };

      nativeBuildInputs = [
        dpkg
        makeWrapper
      ];
      buildInputs = [
        cups
        ghostscript
        a2ps
        gawk
      ];
      unpackPhase = "dpkg-deb -x $src $out";

      installPhase = ''
        for f in $out/opt/brother/Printers/${model}/cupswrapper/cupswrapper${model}; do
        wrapProgram $f --prefix PATH : ${
          lib.makeBinPath [
            coreutils
            ghostscript
            gnugrep
            gnused
          ]
        }
        done

        mkdir -p $out/share/cups/model
        ln -s $out/opt/brother/Printers/${model}/cupswrapper/brother_${model}_printer_en.ppd $out/share/cups/model/
      '';
    };
    meta = with lib; {
      homepage = "http://www.brother.com/";
      description = "Brother ${model} printer CUPS wrapper driver";
      sourceProvenance = with sourceTypes; [binaryNativeCode];
      license = licenses.unfree;
      platforms = platforms.linux;
      downloadPage = "https://support.brother.com/g/b/downloadlist.aspx?c=gb&lang=en&prod=${model}_all&os=128";
    };
  }
