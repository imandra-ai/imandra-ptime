type t

val epoch : t
val min : t
val max : t

type span

module Span : sig
  type t = span

  val zero : t
  val of_d_ps : Z.t * Z.t -> t option
  val neg : t -> t
  val add : t -> t -> t
  val sub : t -> t -> t
  val of_int_s : Z.t -> t
  val of_ptime_span : Ptime.span -> t
  val to_ptime_span : t -> Ptime.span option
  val pp : Format.formatter -> t -> unit
end

val of_span : span -> t option
val to_span : t -> span
val equal : t -> t -> bool
val compare : t -> t -> Z.t
val is_earlier : t -> than:t -> bool
val is_later : t -> than:t -> bool
val add_span : t -> span -> t option
val sub_span : t -> span -> t option
val diff : t -> t -> span

type date = Z.t * Z.t * Z.t
type time = (Z.t * Z.t * Z.t) * Z.t

val of_date_time : date * time -> t option
val to_date_time : ?tz_offset_s:Z.t -> t -> date * time
