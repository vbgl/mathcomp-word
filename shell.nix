with import <nixpkgs> {};

let
  coqPackages = coqPackages_8_19;
  mathcomp = coqPackages.mathcomp.override { version = "2.4.0"; };
in

stdenv.mkDerivation {
name = "coqword-0.0.0";

src = null;

buildInputs = [ ocaml dune coqPackages.coq mathcomp.ssreflect mathcomp.fingroup mathcomp.algebra ];

}
