let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.10-20230814/packages.dhall
        sha256:656a72b06f3c8ef6e6a0c357d120f2a83605edb21b18cb1aaa91217831e0baea

in  upstream
  with maps =
    { dependencies =
      [ "arrays"
      , "exists"
      , "profunctor"
      , "strings"
      , "quickcheck"
      , "lcg"
      , "transformers"
      , "foldable-traversable"
      , "exceptions"
      , "node-fs"
      , "node-buffer"
      , "node-readline"
      , "datetime"
      , "now"
      ]
    , repo = "https://github.com/hdgarrood/purescript-benchotron.git"
    , version = "v7.0.0"
    }
