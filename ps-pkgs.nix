_:
self:
  with self;
  { event =
      let info = hyrule.purs-nix-info; in
      { src.git = { inherit (info) repo rev; };
        info = { inherit (info) version dependencies; };
      };

    node-glob-basic =
      { src.git =
          { repo = "https://github.com/natefaubion/purescript-node-glob-basic.git";
            rev = "22b374b30537a945310fb8049f5bce1b51a7a669";
          };

        info =
          { version = "1.2.0";

            dependencies =
              [ aff
                console
                effect
                lists
                maybe
                node-fs-aff
                node-path
                node-process
                ordered-collections
                strings
              ];
          };
      };

    task =
      { src.git =
          { repo = "https://github.com/ursi/purescript-task.git";
            rev = "7925eda037cac528976d435db7e1a5c8db2a03b8";
          };

        info = /package.nix;
      };
  }
  // import ./official-package-set self
