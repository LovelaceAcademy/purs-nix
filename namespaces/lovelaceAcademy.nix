{
  cardano-transaction-lib = {
    src.git = {
      repo = "https://github.com/LovelaceAcademy/cardano-transaction-lib.git";
      rev = "234a2bffe8a39911aa638bcb788e1a4c625320b4";
    };
    info = /package.nix;
  };

  aeson = {
    src.git = {
      repo = "https://github.com/LovelaceAcademy/purescript-aeson.git";
      rev = "a83565c34dd7e4727061924efecedee67e1fcc82";
    };
    info = /package.nix;
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
      repo = "https://github.com/LovelaceAcademy/purescript-sequences";
      rev = "162022bc0c499ee4b5ab2c3b5c85098acc81c71e";
    };
    info = /package.nix;
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
