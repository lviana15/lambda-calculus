%{ open Ast %}

%token LPAREN RPAREN
%token LAMBDA
%token DOT
%token <string> ID
%token EOF

%start program
%type <Ast.term> program

%left APP

%%

program:
  | term EOF { $1 }
;

term:
  | abstraction             { $1 }
  | application %prec APP   { $1 }
  | atom                    { $1 }
;

abstraction:
  | LAMBDA ID DOT term { Abs ($2, $4) }
;

application:
  | application atom    { App ($1, $2) } 
  | atom atom           { App ($1, $2) }
;

atom:
  | ID { Var $1 }
  | LPAREN term RPAREN { $2 }
;

