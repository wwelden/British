{
module Parser where
--import Lexer
}
%name parse
%tokentype {Token }
%error { parseError}
%monad { Maybe } 

%token
    a       { ATok }
    b       { BTok }
    c       { CTok }
    x       { XTok }

%%

{
data Token = ATok | BTok | CTok | XTok  deriving Show

parseError :: [Token] -> Maybe a
parseError _ = Nothing
}
