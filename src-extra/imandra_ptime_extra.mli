(* imandra-ptime-extra

   Matt Bray, Imandra Inc
   Copyright (c) 2022
*)

type t = Imandra_ptime.t
type span = Imandra_ptime.span

val is_valid : t -> bool

module Span : sig
  val is_valid : span -> bool
  val of_int_ms : Z.t -> span
  val to_int_ms : span -> Z.t
  val of_int_us : Z.t -> span
  val to_int_us : span -> Z.t
  val of_int_ns : Z.t -> span
  val to_int_ns : span -> Z.t
  val of_int_ps : Z.t -> span
  val to_int_ps : span -> Z.t
end
