{ inputs =
    { nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      purs-nix.url = "github:ursi/purs-nix";
      utils.url = "github:ursi/flake-utils/5";
    };

  outputs = { utils, ... }@inputs:
    utils.for-default-systems
      ({ make-shell, pkgs, purs-nix, ... }:
         let
           inherit (purs-nix) ps-pkgs purs;

           inherit
             (purs
                { dependencies =
                    with ps-pkgs;
                    [ console
                      effect
                      prelude
                    ];
                }
             )
             command;
         in
         { devShell =
             # https://github.com/ursi/nix-make-shell
             make-shell
               { packages =
                   with pkgs;
                   [ # entr
                     nodejs
                     purs-nix.purescript
                     # purs-nix.purescript-language-server
                     (command {})
                   ];

                 # aliases.watch = "find src | entr -s 'echo bundling; purs-nix bundle'";
               };
         }
      )
      inputs;
}
