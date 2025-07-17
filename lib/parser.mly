%token LPAREN RPAREN
%token DOT
%token LAMBDA
%token <string> ID
%token EOF


%start <Ast.term> program
%{ open Ast %}
%%

program:
  EOF { failwith "Empty input: Expected a lambda calculus expression" }
;

