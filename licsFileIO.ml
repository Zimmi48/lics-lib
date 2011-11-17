open LicsAst

(** lit une valeur de type program dans le fichier dont le nom est passé en argument *)
let read s : circuitLics =
  let file = open_in s in
  input_value file

(** écrit une valeur dans un fichier
    @param s nom du fichier
    @param v valeur à écrire *)
let write s v =
  let file = open_out s in
  output_value file v
