
module Share = struct

  type 'a t

  val c_make: 'a #-> 'a t = "share_make"
  val c_clone: 'a t obs #-> 'a t = "share_clone"
  val c_release: 'a t #-> 'a option = "share_release"
  val visit: 'a t obs #-> 'a obs = "share_visit"

  val make: 'a -> 'a t
  let make x = c_make x

  val clone: 'a t obs -> 'a t 
  let clone x = c_clone x

  val release: 'a t -> 'a option 
  let release x = c_release x

end
