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
      repo = "https://github.com/Risto-Stevcev/purescript-properties.git";
      rev = "ddcad0f6043cc665037538467a2e2e4173ef276a";
    };
    info = { ps-pkgs, ... }: with ps-pkgs; {
      dependencies = [
        prelude
        console
      ];
    };
  };

  lattice = {
    src.git = {
      repo = "https://github.com/Risto-Stevcev/purescript-lattice.git";
      rev = "aebe3686eba30f199d17964bfa892f0176c1742d";
    };
    info = { ps-pkgs, ps-pkgs-ns, ... }: with ps-pkgs; with ps-pkgs-ns; {
      dependencies = [
        prelude
        console
        lovelaceAcademy.properties
      ];
    };
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
      repo = "https://github.com/juspay/medea-ps.git";
      rev = "8b215851959aa8bbf33e6708df6bd683c89d1a5a";
    };
    info = { ps-pkgs, ... }: with ps-pkgs; {
      dependencies = [
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
