{
  cardano-transaction-lib = {
    src.git = {
      repo = "https://github.com/LovelaceAcademy/cardano-transaction-lib.git";
      rev = "c89e5de2fd429f7a56d281c851a2f63f9e997979";
    };
    info = /package.nix;
  };

  aeson = {
    src.git = {
      repo = "https://github.com/mlabs-haskell/purescript-aeson.git";
      ref = "klntsky/490-forbid-unlawful-encodeaeson";
      rev = "8e9d42980e824450c18c397295573160d1ce8424";
    };
    info = { ps-pkgs, ps-pkgs-ns, ... }: with ps-pkgs; with ps-pkgs-ns;
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
          lovelaceAcademy.sequences
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
    info = { ps-pkgs, ... }: with ps-pkgs; {
      dependencies = [
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
  };

  sequences = {
    src.git = {
      repo = "https://github.com/hdgarrood/purescript-sequences";
      rev = "1f1d828ef30070569c812d0af23eb7253bb1e990";
    };
    info = { ps-pkgs, ... }: with ps-pkgs; {
      dependencies = [
        arrays
        ps-pkgs."assert"
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
  };

  properties = {
    src.git = {
      repo = "https://github.com/LovelaceAcademy/purescript-properties.git";
      rev = "e87df57a8e1f49f2f5e89b25d7e310faa17b3605";
    };
    info = /package.nix;
  };

  lattice = {
    src.git = {
      repo = "https://github.com/LovelaceAcademy/purescript-lattice.git";
      rev = "1d74abb4a3c88502f3daf5db343c4d6e0e8649e4";
    };
    info = /package.nix;
  };

  mote = {
    src.git = {
      repo = "https://github.com/garyb/purescript-mote.git";
      rev = "29aea4ad7b013d50b42629c87b01cf0202451abd";
    };
    info = { ps-pkgs, ... }: with ps-pkgs; {
      dependencies = [
        these
        transformers
        arrays
      ];
    };
  };

  medea = {
    src.git = {
      repo = "https://github.com/LovelaceAcademy/medea-ps.git";
      rev = "d19e96ef3576f745adaf1b9e6d8c4180e0aafc1f";
    };
    info = /package.nix;
  };

  purescript-toppokki = {
    src.git = {
      repo = "https://github.com/firefrorefiddle/purescript-toppokki";
      ref = "mike/browserpages";
      rev = "6983e07bf0aa55ab779bcef12df3df339a2b5bd9";
    };
    info = { ps-pkgs, ... }: with ps-pkgs; {
      dependencies = [
        prelude
        record
        functions
        node-http
        aff-promise
        node-buffer
        node-fs-aff
      ];
    };
  };
}
