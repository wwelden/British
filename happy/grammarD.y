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

%nonassoc TERM
%nonassoc EXP

%%

S : E b        { EState $1 }
  | T b b      { TState $1 }
E : a  %prec EXP         { AExp      }
T : a  %prec TERM        { ATerm     }


{
data Token = DoTok | DoneTok | ThenTok | BTok | XTok | ATok | YTok 
           | MultTok | PlusTok | MinusTok | DivTok | LPTok | RPTok 
           | ITok Int  deriving (Show, Eq)

data State = EState Exp | TState Term deriving Show
data Exp = AExp deriving Show
data Term = ATerm deriving Show


parseError :: [Token] -> Maybe a
parseError _ = Nothing
}
