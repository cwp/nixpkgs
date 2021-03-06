{ cabal, conduit, conduitExtra, connection, cprngAes, dataDefault
, HUnit, monadControl, mtl, network, streamingCommons, systemFileio
, systemFilepath, tls, transformers
}:

cabal.mkDerivation (self: {
  pname = "network-conduit-tls";
  version = "1.1.0";
  sha256 = "1q9wx7bvr4a65rkyfn2vd3h9bfpsvm9zcqqjhjsrgb91l6x5bdqi";
  buildDepends = [
    conduit conduitExtra connection cprngAes dataDefault monadControl
    network streamingCommons systemFileio systemFilepath tls
    transformers
  ];
  testDepends = [ conduit conduitExtra connection HUnit mtl ];
  meta = {
    homepage = "https://github.com/snoyberg/conduit";
    description = "Create TLS-aware network code with conduits";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})
