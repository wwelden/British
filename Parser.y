{
module Parser where
import Lexer
import Data.Maybe
}


%name parse
%tokentype { Token }
%error { parseError }
%monad { Maybe }

%token
    int             { IntTok $$ }
    real            { RealTok $$ }
    fee             { FeeTok }
    pie             { PieTok }
    phi             { PhiTok }
    mole            { MoleTok }
    '+'             { PlusTok }
    '-'             { MinusTok }
    '*'             { MultTok }
    '/'             { DivTok }
    '('             { LParenTok }
    ')'             { RParenTok }
    '['             { LBracketTok }
    ']'             { RBracketTok }
    '%'             { ModTok }
    '='             { EqTok }
    '^'             { ExpTok }
    '>'             { GTTok }
    '<'             { LTTok }
    leq             { LeqTok }
    geq             { GeqTok }
    sqrt            { SqrtTok }
    ifz             { IfzTok }
    for             { ForTok }
    -- Additional Boolean and control tokens
    ace             { AceTok }
    rank            { RankTok }
    var             { VarTok $$ }  -- Assuming variable names are parsed to a specific value.
    string          { StringTok $$ }
    -- Boolean logic and flow control
    supposing       { SupposingTok }
    hence           { HenceTok }
    otherwise       { OtherwiseTok }
    hearye          { HearyeTok }
    oi              { OiTok }
    is              { IsTok }
    -- Logic operators
    '/\\'           { AndTok }
    '\\/'           { OrTok }
    innit           { InnitTok }

    colonize        { ColonizeTok}
    cheers          { CheersTok}
    mate            { MateTok}
    bloke           { BlokeTok}
    ','             { CommaTok}
    '#'             { UnitTok}
    '=>'            { ArrowTok}
    '\\'            { BackslashTok}

    display         { DisplayTok }
    '=='            { EqEqTok }
    whilst          { WhilstTok }
    doeth           { DoethTok }
    '|'             { PipeTok }
    '~'             { TildeTok }

    cname                          { CnameTok $$}
    fname                          { FnameTok $$}
    noble                          {  NobleTok }
    serfs                          {  SerfsTok }
    decree                         {  DecreeTok }
    obeys                          {  ObeysTok }
    oneself                        {  OneselfTok }
    a                              {  ATok }
    '.'                            {  DotTok }
    '{'                            {  LBraceTok }
    '}'                            {  RBraceTok }
    -- Structural characters


%nonassoc for otherwise '=>' whilst display doeth
%right '\\/'
%right '/\\'
%nonassoc '=' '>' '<' leq geq 
%left '|' '~' 
%left '=='
%right ';' 
%left '+' '-' 
%left '*' '/'
%left '%'
%right '^'
%nonassoc 'UMINUS'
%nonassoc sqrt
%right '('

%%
Dec: Expr innit                   {ExprDec $1}
    | hearye var is Expr innit    {HearyeDec $2 $4}   
    | colonize var is Expr innit  {ColonizeDec $2 $4}

ExprList : {- empty -}                   { [] }
    | Expr                                              {[$1]}
    | Expr and ExprList                  { $1 : $3 }
    


Expr: int                         { IntExpr $1 }
    | real                        { RealExpr $1 }
    | fee                         { FeeExpr }
    | phi                         { PhiExpr }
    | pie                         { PieExpr }
    | mole                        { MoleExpr }
    | ace                         { BoolExpr True}
    | rank                        { BoolExpr False}
    | string                      { StringExpr $1 }
    | var                         { VarExpr $1 }
    | '(' Expr ')'                { $2 }
    | '[' Expr ']'                { NotExpr $2 }
    | sqrt Expr                   { SqrtExpr $2 }
    | '-' Expr %prec 'UMINUS'     { NegExpr $2 }
    | Expr '+' Expr               { BOpExpr PlusOp $1 $3 }
    | Expr '-' Expr               { BOpExpr MinusOp $1 $3 }
    | Expr '*' Expr               { BOpExpr MultOp $1 $3 }
    | Expr '/' Expr               { BOpExpr DivOp $1 $3 }
    | Expr '^' Expr               { BOpExpr ExpOp $1 $3 }
    | Expr '%' Expr               { BOpExpr ModOp $1 $3 }
    | Expr '=' Expr               { BOpExpr EqOp $1 $3 }
    | Expr '>' Expr               { BOpExpr GtOp $1 $3 }
    | Expr '<' Expr               { BOpExpr LtOp $1 $3 }
    | Expr '/\\' Expr             { BOpExpr AndOp $1 $3 }
    | Expr '\\/' Expr             { BOpExpr OrOp $1 $3 }
    | Expr leq Expr               { BOpExpr LeqOp $1 $3 }
    | Expr geq Expr               { BOpExpr GeqOp $1 $3 }
    | supposing Expr hence Expr otherwise Expr { SupposingExpr $2 $4 $6 }
    | ifz Expr hence Expr otherwise Expr { IfzExpr $2 $4 $6 }
    | oi var is Expr for Expr     { OiExpr $2 $4 $6}
    | mate '(' Expr ')'           { MateExpr $3 }
    | bloke '(' Expr ')'          { BlokeExpr $3 }
    | '/' Expr ',' Expr '\\'      { TupleExpr $2 $4}
    | '#'                         { UnitExpr }
    | cheers var '=>' Expr        { FuncExpr $2 $4 }
    | Expr '(' Expr ')'           { ApplyExpr $1 $3 }
    | whilst Expr doeth Expr      { WhilstExpr $2 $4 }
    | display Expr                { RefExpr $2 }
    | Expr '==' Expr              { AssignExpr $1 $3 }
    | '|' Expr '|'               { DerefExpr $2 }
    | Expr '~' Expr               { SeqExpr $1 $3 }



{

type Var = String



data Dec = ExprDec Expr
    | HearyeDec Var Expr
    | ColonizeDec Var Expr
    deriving (Show, Eq)

data Expr = IntExpr Int
    | RealExpr Double
    | FeeExpr
    | PhiExpr
    | PieExpr
    | MoleExpr
    | NegExpr Expr
    | SqrtExpr Expr
    | IfzExpr Expr Expr Expr
    | SupposingExpr Expr Expr Expr
    | OiExpr Var Expr Expr
    | NotExpr Expr
    | StringExpr String
    | VarExpr Var
    | BOpExpr BOp Expr Expr
    | BoolExpr Bool
    | MateExpr Expr
    | BlokeExpr Expr
    | TupleExpr Expr Expr
    | UnitExpr 
    | FuncExpr Var Expr
    | ApplyExpr Expr Expr
    | WhilstExpr Expr Expr
    | RefExpr Expr
    | AssignExpr Expr Expr
    | DerefExpr Expr
    | SeqExpr Expr Expr
    deriving (Show, Eq)

data BOp = PlusOp
    | MinusOp
    | MultOp
    | DivOp
    | ModOp
    | ExpOp
    | EqOp
    | GtOp
    | LtOp
    | LeqOp
    | GeqOp
    | AndOp
    | OrOp
    deriving (Show, Eq)

parseError :: [Token] -> Maybe a
parseError _ = Nothing

}
