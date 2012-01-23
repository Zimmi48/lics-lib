(** types de description des actions à exécuter *)

type unaire = Not
type binaire = Or | And | Nand | Xor
type ternaire = Mux

type expression =
    Const of bool
  | Unaire of unaire * int
  | Binaire of binaire * int * int
  | Ternaire of ternaire * int * int * int

type stmt =
    Assign of int * expression
  | Lw of string * (int list) * (int list) | Inputreg of int | Input of int
  | Sw of string * (int list) * (int list) | Outputreg of int | Output of int
(** Pour Lw, on fournit d'abord la liste des variables d'arrivée
    (de départ pour Sw),
    ensuite celle donnant l'adresse *)

type program = stmt list

(** type à enregistrer dans le binaire de sortie du compilo *)
type circuitLics = { numero_var_max : int; nb_reg : int; programme : program}


