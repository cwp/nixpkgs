{ cabal, cereal, mtl, text, gccApple }:

cabal.mkDerivation (self: {
  pname = "hfsevents";
  version = "0.1.5";
  sha256 = "0hp9jjj59smfcs51d9zjhyvgdbn46l0rl0jr98wbzg3qya0vwj5k";
  buildDepends = [ cereal mtl text ];
  buildTools = [ gccApple ];
  configureFlags = "--ghc-option=-pgmc=${gccApple}/bin/gcc";
  meta = {
    homepage = "http://github.com/luite/hfsevents";
    description = "File/folder watching for OS X";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.stdenv.lib.platforms.darwin;
  };
})
