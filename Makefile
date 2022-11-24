build:
	opam exec -- dune build @install

install: build
	opam exec -- dune install

format:
	opam exec -- dune build @fmt --auto-promote || true

_opam:
	opam switch create . --empty
	opam switch set-invariant ocaml-base-compiler.4.12.1

opam-install-deps: _opam
	opam install . ./vendor/imandra-prelude --deps-only --yes
