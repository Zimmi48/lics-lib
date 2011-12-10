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
  | Syscall of int * int
  | Inputram of int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int
(** Les 32 premiers bits indiquent les registres où sera stockée l'information (équivalent d'un unique registre MIPS 32 bits.
   Les 8 derniers indiquent l'adresse de lecture (donc on a une RAM de 256 * 4 octets)
   Même topo pour Outputram sauf qu'on écrit au lieu de lire *)
  | Outputram of int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int * int

type program = stmt list

(** type à enregistrer dans le binaire de sortie du compilo *)
type circuitLics = { numero_var_max : int; nb_reg : int; programme : program}


