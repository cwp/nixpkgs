{ cabal, filepath, polyparse, random }:

cabal.mkDerivation (self: {
  pname = "HaXml";
  version = "1.24.1";
  sha256 = "1pvqgczksxasayvdb6d4g7ya7g7w1v9hsa35kaxm9bcic9y8q9az";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [ filepath polyparse random ];
  meta = {
    homepage = "http://www.cs.york.ac.uk/fp/HaXml/";
    description = "Utilities for manipulating XML documents";
    license = "LGPL";
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
