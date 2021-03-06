{ stdenv, fetchzip }:

stdenv.mkDerivation rec {

  name = "supervise-${version}";
  version = "1.4.0";

  src = fetchzip {
    url = "https://github.com/catern/supervise/releases/download/v${version}/supervise-${version}.tar.gz";
    sha256 = "0jk6q2f67pfs18ah040lmsbvbrnjap7w04jjddsfn1j5bcrvs13x";
  };

  meta = with stdenv.lib; {
    homepage = https://github.com/catern/supervise;
    description = "A minimal unprivileged process supervisor making use of modern Linux features";
    platforms = platforms.linux;
    license = licenses.gpl3;
    maintainers = with stdenv.lib.maintainers; [ catern ];
  };
}
