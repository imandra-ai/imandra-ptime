(* imandra-ptime-extra

   Matt Bray, Imandra Inc
   Copyright (c) 2022
*)

type t = Imandra_ptime.t
type span = Imandra_ptime.span
type time = Imandra_ptime.time

val is_valid : t -> bool
val ps_count_in_ps : Z.t
val ps_count_in_ns : Z.t
val ps_count_in_us : Z.t
val ps_count_in_ms : Z.t
val ps_count_in_s : Z.t
val ms_count_in_day : Z.t
val us_count_in_day : Z.t
val ns_count_in_day : Z.t
val ps_count_in_day : Z.t
val s_count_in_day : Z.t

type week = Week_1 | Week_2 | Week_3 | Week_4 | Week_5

val compare_week : week -> week -> Z.t

module Span : sig
  val is_valid : span -> bool
  val of_int_s : Z.t -> span
  val to_int_s : span -> Z.t
  val of_int_ms : Z.t -> span
  val to_int_ms : span -> Z.t
  val of_int_us : Z.t -> span
  val to_int_us : span -> Z.t
  val of_int_ns : Z.t -> span
  val to_int_ns : span -> Z.t
  val of_int_ps : Z.t -> span
  val to_int_ps : span -> Z.t
  val is_shorter : span -> than:span -> bool
  val is_longer : span -> than:span -> bool
end
