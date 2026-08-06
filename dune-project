(lang dune 2.9)

; Composition root only. The imandra-ptime package -- source, dialect,
; package stanza, generated opam file -- lives in the imandra-ptime-src
; submodule; defining it here too would make dune reject the workspace
; ("package imandra-ptime is defined more than once"). This repo just
; composes the source with its deps (vendor/imandra-prelude) for dev/CI.
