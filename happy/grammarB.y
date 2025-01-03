{
module Parser where
--import Lexer

}
%name parse
%tokentype {Token }
%error { parseError}
%monad { Maybe } 

%token
    a        { ATok }
    b        { BTok }
    x        { XTok }

%left x
%%
S : a E b       { ABState $2  }
  | x           { XState      }
E : E x E       { XExpr $1 $3 }
  | b           { BExpr       }

{
data Token = BTok | XTok | ATok deriving (Eq, Show)

data State = ABState Expr | XState    deriving (Show, Eq)
data Expr = XExpr Expr Expr | BExpr   deriving (Show, Eq)

lexC 'a' = ATok
lexC 'b' = BTok
lexC 'x' = XTok


parseError :: [Token] -> Maybe a
parseError _ = Nothing
}
