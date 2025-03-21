{
  lib,
  fetchurl,
  pkgs,
  stdenv,
}:

stdenv.mkDerivation rec {
  pname = "fortran-fpm";

  version = "0.11.0";

  src = fetchurl {
    url = "https://github.com/fortran-lang/fpm/releases/download/v${version}/fpm-${version}.F90";
    sha256 = "sha256-mIozF+4kSO5yB9CilBDwinnIa92sMxSyoXWAGpz1jSc=";
  };

  dontUnpack = true;

  nativeBuildInputs = with pkgs; [ gfortran ];

  buildPath = "build/bootstrap";

  buildPhase = ''
    runHook preBuild

    mkdir -p ${buildPath}
    gfortran -J ${buildPath} -o ${buildPath}/${pname} $src

    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall

    mkdir -p $out/bin
    cp ${buildPath}/${pname} $out/bin

    runHook postInstall
  '';

  meta = with lib; {
    description = "Fortran Package Manager (fpm)";
    homepage = "https://fpm.fortran-lang.org";
    maintainers = [ maintainers.proofconstruction ];
    license = licenses.mit;
    platforms = platforms.all;
    mainProgram = "fortran-fpm";
  };
}
