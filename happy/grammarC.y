{
module Parser where
import Lexer
import Data.Maybe
}

%monad { Maybe } 
%name parse
%tokentype {Token}
%error { parseError}

%token
    x       { XTok }
    y       { YTok }
    z       { ZTok }
    '+'     { PlusTok } 
    '*'     { MultTok }
    '-'     { MinusTok }
    '('     { LPTok }
    ')'     { RPTok }

%left '-' '+'
%left '*'
%nonassoc NEG
%%

E : E '+' E 		{ PlusExp $1 $3  }
  | E '*' E 		{ MultExp $1 $3  }
  | E '-' E 		{ MinusExp $1 $3 }
  | '-' E %prec NEG	{ NegExp $2      }
  | '(' E ')'		{ $2   }
  | x				{ XExp }
  | y				{ YExp }
  | z				{ ZExp }

{

data Exp = XExp | YExp | ZExp | PlusExp Exp Exp | MultExp Exp Exp 
          | MinusExp Exp Exp | NegExp Exp deriving (Show, Eq)

parseError :: [Token] -> Maybe a
parseError _ = Nothing

}
