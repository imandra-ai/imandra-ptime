.PHONY: build install format opam-add-staging-repository opam-install-deps setup

build:
	opam exec --switch=. -- dune build @install

install: build
	opam exec --switch=. -- dune install

format:
	opam exec --switch=. -- dune build @fmt --auto-promote || true

_opam:
	opam switch create . --empty
	opam switch set-invariant --switch=. ocaml-base-compiler.4.12.1

# needed for setup on dev machine
opam-add-staging-repository: _opam
	opam repository add imandra-staging --switch=. \
	  git+ssh://git@github.com/imandra-ai/opam-repository-staging.git || true

opam-install-deps: _opam opam-add-staging-repository
	opam install --switch=. ./src ./vendor/imandra-prelude --deps-only --yes
