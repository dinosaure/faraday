open Core.Std
open Async.Std

open Faraday


val serialize
  :  Faraday.t
  -> yield  : (t -> unit Deferred.t)
  -> writev : (buffer iovec list -> [ `Ok of int | `Closed ] Deferred.t)
  -> unit Deferred.t

val writev_of_fd
  :  Fd.t
  -> buffer iovec list -> [ `Ok of int | `Closed ] Deferred.t
