build:
	opam exec -- dune build @install

install: build
	opam exec -- dune install

format:
	opam exec -- dune build @fmt --auto-promote || true

_opam:
	opam switch create . --empty
	opam switch set-invariant ocaml-base-compiler.4.12.1

# needed for setup on dev machine
opam-add-staging-repository:
	opam repository add imandra-staging git+ssh://git@github.com/imandra-ai/opam-repository-staging.git

opam-install-deps: _opam
	opam install ./src ./vendor/imandra-prelude --deps-only --yes

# overall setup
setup: _opam opam-add-staging-repository opam-install-deps
