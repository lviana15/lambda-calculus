{
open Lexing

exception SyntaxError of string
}

let id = ['a'-'z' 'A'-'Z']
let whitespace = [' ' '\t' ]+
let newline = '\n' | '\r' | "\r\n"

rule read_token = parse
  | whitespace    { read_token lexbuf }
  | '('     { LPAREN }
  | ')'     { RPAREN }
  | '\\'     { LAMBDA }
  | '.'     { DOT }
  | id      { ID (lexeme lexbuf) }
  | eof     { EOF }
  | _       { raise (SyntaxError ("Invalid character" ^ lexeme lexbuf)) }
