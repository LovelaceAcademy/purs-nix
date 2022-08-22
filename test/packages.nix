with builtins;
{ l, p, ps-pkgs, ps-pkgs-ns, purs, ... }:
  let
    buckets =
      set-buckets 1 all-packages
      // set-buckets 2 (proper-names ps-pkgs-ns.ursi)
      // { event = 2;
           task = 2;
         };

    proper-names = l.mapAttrs' (_: v: l.nameValuePair v.purs-nix-info.name v);
    set-buckets = n: mapAttrs (_: _: n);

    all-packages =
      ps-pkgs
      // foldl'
           (acc: packages: acc // proper-names packages)
           {}
           (attrValues ps-pkgs-ns);

    dependencies =
      foldl'
        (acc: { name, value }:
           let
             bucket = toString buckets.${name};
           in
           acc
           // { ${bucket} =
                  if acc?${bucket}
                  then acc.${bucket} ++ [ value ]
                  else [ value ];
              }
        )
        {}
        (l.mapAttrsToList l.nameValuePair all-packages);
  in
  # to truly test this you need to manually wipe the caches in ~/.cache/nix
  l.mapAttrs'
    (b: d:
       let
         ps = purs { dependencies = d; };

         command =
           ps.command
             { output = "$out";
               srcs = [];
             }
           + "/bin/purs-nix";
       in
       l.nameValuePair "compiled packages bucket ${b}"
         (p.runCommand "compiled-packages-${b}" {}
            "${command} compile"
         )
    )
    dependencies
