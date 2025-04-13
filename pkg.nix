{ pkgs, inputs, buildArgs ? "", ... }:

pkgs.stdenv.mkDerivation {
  pname = "fachschaft-IM-website";
  version = "1.0";

  src = ./.;

  buildInputs = with pkgs; [ hugo ];

  configurePhase = ''
    echo src is $src
    mkdir -p themes/PaperMod

    cp -r ${inputs.papermod-theme}/* themes/PaperMod
  '';

  buildPhase = ''
    hugo build ${buildArgs}
  '';

  installPhase = ''
    runHook preInstall
    mkdir -p $out
    cp -r public/* $out
    runHook postInstall
  '';
}
