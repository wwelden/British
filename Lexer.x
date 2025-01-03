{
module Lexer where
import Debug.Trace
}
%wrapper "basic"

$digit      = [0-9]                     -- Digit
$alpha      = [a-zA-Z]                  -- Alphabetic character
$alphanum   = [$alpha$digit]            -- Alphanumeric character

tokens :-

$digit+                                 { IntTok .read }
($digit* "." $digit+)                   { RealTok .read }
"fee"                                   { const FeeTok }
"pie"                                   { const PieTok }
"phi"                                   { const PhiTok }
"mole"                                  { const MoleTok }
"+"                                     { const PlusTok }
"-"                                     { const MinusTok }
"*"                                     { const MultTok }
"/"                                     { const DivTok }
"("                                     { const LParenTok }
")"                                     { const RParenTok }
"["                                     { const LBracketTok }
"]"                                     { const RBracketTok }
"^"                                     { const ExpTok }
"%"                                     { const ModTok }
"="                                     { const EqTok }
">"                                     { const GTTok }
"<"                                     { const LTTok }
"leq"                                   { const LeqTok }
"geq"                                   { const GeqTok }
"sqrt"                                  { const SqrtTok }
"ace"                                   { const AceTok }
"rank"                                  { const RankTok }
[A-Z_]+                                 { VarTok }
"ifZ"                                   { const IfzTok }
"supposing"                             { const SupposingTok }
"hence"                                 { const HenceTok }
"otherwise"                             { const OtherwiseTok }
"hearye"                                { const HearyeTok} -- might need to change this to not be a constant
"oi"                                    { const OiTok }
"is"                                    { const IsTok }
"for"                                   { const ForTok }
\/\\                                    { const AndTok }
\\\/                                    { const OrTok }
"innit"                                 { const InnitTok}
"colonize"                              { const ColonizeTok}
"cheers"                                { const CheersTok}
"mate"                                  { const MateTok}
"bloke"                                 { const BlokeTok}
","                                     { const CommaTok}
"#"                                     { const UnitTok}
"=>"                                    { const ArrowTok}
\\                                      { const BackslashTok}
"display"                               { const DisplayTok }
"=="                                    { const EqEqTok }
"whilst"                                { const WhilstTok }
"doeth"                                 { const DoethTok }
"|"                                     { const PipeTok }
"~"                                     { const TildeTok }

[A-Z]([a-Z_])*                          { CnameTok }
[a-z]([a-z_])*                          { FnameTok }
"noble"                                 { const NobleTok }
"serfs"                                 { const SerfsTok }
"decree"                                { const DecreeTok }
"obeys"                                 { const ObeysTok }
"oneself"                               { const OneselfTok }
"a"                                     { const ATok }
"."                                     { const DotTok }
"{"                                     { const LBraceTok }
"}"                                     { const RBraceTok }


\`\`[^\`]*\`\`                          { StringTok }


$white+                                 ;
"--" [^\n]*                             ;



{
data Token = PlusTok | MinusTok | MultTok | DivTok | ExpTok | ModTok | SqrtTok
              | AndTok | OrTok
              | AceTok | RankTok
              | InnitTok
              | VarTok String
              | IntTok Int | RealTok Double
              | StringTok String
              | HearyeTok | OiTok | IsTok | ForTok
              | FeeTok | PieTok | PhiTok | MoleTok
              | SupposingTok | HenceTok | OtherwiseTok | IfzTok
              | LParenTok | RParenTok | LBracketTok | RBracketTok
              | EqTok | GeqTok | LTTok | LeqTok | GTTok
              | ColonizeTok | CheersTok | MateTok | BlokeTok
              | CommaTok | UnitTok | ArrowTok | BackslashTok
              | DisplayTok | EqEqTok | WhilstTok | DoethTok | PipeTok | TildeTok
              | ATok | DotTok | LBraceTok | RBraceTok | CNameTok String | FNameTok String
              | NobleTok | SerfsTok | DecreeTok | ObeysTok | OneselfTok
              deriving (Show, Eq, Ord)


scanTokens :: String -> Maybe [Token]
scanTokens str = go ('\n',[],str)
  where go inp@(_,_bs,str) =
          case alexScan inp 0 of
                AlexEOF -> Just []
                AlexError err -> traceShow err $ Nothing
                AlexSkip  inp' len     -> go inp'
                AlexToken inp' len act -> fmap ((act (take len str)):) (go inp')
}
