{
  cardano-transaction-lib = {
    src.git = {
      repo = "https://github.com/LovelaceAcademy/cardano-transaction-lib.git";
      rev = "9d159e5ad132285792297eb23ad6c6b9bd781f90";
    };
    info = /package.nix;
  };

  aeson = {
    src.git = {
      repo = "https://github.com/mlabs-haskell/purescript-aeson.git";
      rev = "8e9d42980e824450c18c397295573160d1ce8424";
    };
    info = { ps-pkgs, ... }: with ps-pkgs;
      {
        dependencies = [
          aff
          argonaut
          argonaut-codecs
          argonaut-core
          arrays
          bifunctors
          bigints
          const
          control
          effect
          either
          exceptions
          foldable-traversable
          foreign-object
          gen
          identity
          integers
          maybe
          newtype
          node-buffer
          node-fs-aff
          node-path
          nonempty
          numbers
          partial
          prelude
          quickcheck
          record
          sequences
          spec
          strings
          transformers
          tuples
          typelevel
          typelevel-prelude
          uint
          untagged-union
        ];
      };
  };

  aeson-helpers = {
    src.git = {
      repo = "https://github.com/mlabs-haskell/purescript-bridge-aeson-helpers.git";
      rev = "44d0dae060cf78babd4534320192b58c16a6f45b";
    };
    info = { ps-pkgs, ... }: with ps-pkgs;
      [
        aff
        argonaut-codecs
        argonaut-core
        arrays
        bifunctors
        contravariant
        control
        effect
        either
        enums
        foldable-traversable
        foreign-object
        maybe
        newtype
        ordered-collections
        prelude
        profunctor
        psci-support
        quickcheck
        record
        spec
        spec-quickcheck
        transformers
        tuples
        typelevel-prelude
      ];
  };

  sequences = {
    src.git = {
      repo = "https://github.com/hdgarrood/purescript-sequences";
      ref = "v3.0.2";
    };
    info = { ps-pkgs, ... }: with ps-pkgs;
      [
        arrays
        assert
        console
        effect
        lazy
        maybe
        newtype
        nonempty
        partial
        prelude
        profunctor
        psci-support
        quickcheck
        quickcheck-laws
        tuples
        unfoldable
        unsafe-coerce
      ];
  };

  properties = {
    src.git = {
      repo = "https://github.com/Risto-Stevcev/purescript-properties.git";
      ref = "v0.2.0";
    };
    info = { ps-pkgs, ... }: with ps-pkgs;
      [
        prelude
        console
      ];
  };

  lattice = {
    src.git = {
      repo = "https://github.com/Risto-Stevcev/purescript-lattice.git";
      ref = "v0.3.0";
    };
    info = { ps-pkgs, ... }: with ps-pkgs;
      [
        prelude
        console
        properties
      ];
  };

  mote = {
    src.git = {
      repo = "https://github.com/garyb/purescript-mote";
      ref = "v1.1.0";
    };
    info = { ps-pkgs, ... }: with ps-pkgs;
      [
        these
        transformers
        arrays
      ];
  };

  medea = {
    src.git = {
      repo = "https://github.com/juspay/medea-ps.git";
      ref = "8b215851959aa8bbf33e6708df6bd683c89d1a5a";
    };
    info = { ps-pkgs, ... }: with ps-pkgs;
      [
        aff
        argonaut
        arrays
        bifunctors
        control
        effect
        either
        enums
        exceptions
        foldable-traversable
        foreign-object
        free
        integers
        lists
        maybe
        mote
        naturals
        newtype
        node-buffer
        node-fs-aff
        node-path
        nonempty
        ordered-collections
        parsing
        partial
        prelude
        psci-support
        quickcheck
        quickcheck-combinators
        safely
        spec
        strings
        these
        transformers
        typelevel
        tuples
        unicode
        unordered-collections
        unsafe-coerce
      ];
  };

  purescript-toppokki = {
    src.git = {
      repo = "https://github.com/firefrorefiddle/purescript-toppokki";
      ref = "6983e07bf0aa55ab779bcef12df3df339a2b5bd9";
    };
    info = { ps-pkgs, ... }: with ps-pkgs;
      [
        prelude
        record
        functions
        node-http
        aff-promise
        node-buffer
        node-fs-aff
      ];
  };
}
