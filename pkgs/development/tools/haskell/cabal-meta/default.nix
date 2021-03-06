{ cabal, hspec, shelly, systemFileio, systemFilepath, text }:

cabal.mkDerivation (self: {
  pname = "cabal-meta";
  version = "0.4.1.2";
  sha256 = "17ln9j0n9rb0kbnp37fi9yaf932dacrdmf3jrp301r886kh2a7kk";
  isLibrary = true;
  isExecutable = true;
  doCheck = false;
  buildDepends = [ shelly systemFileio systemFilepath text ];
  testDepends = [ hspec shelly systemFilepath text ];
  meta = {
    homepage = "http://www.yesodweb.com/";
    description = "build multiple packages at once";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
