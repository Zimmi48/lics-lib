
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
  | Inputreg of int | Input of int
  | Outputreg of int | Output of int

type program = stmt list
