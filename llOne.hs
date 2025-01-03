data Token = IntTok Int | MultTok | PlusTok deriving (Show, Eq)
data Expr = MultExpr Expr Expr | PlusExpr Expr Expr | IntExpr Int deriving (Show, Eq)
{-data Expr = PlusExpr Expr Factor| FactorExpr Factor deriving (Show, Eq)
data Factor = MultFactor Factor Term | TermFactor Term deriving (Show, Eq)
data Term = IntTerm Int deriving (Show, Eq)
-}
parse :: [Token] -> Expr
parse toks = fst $ parseE toks

parseE :: [Token] -> (Expr, [Token])
parseE (tok:toks) = 
  case tok of
    PlusTok -> 
        let (left, toks') = parseE toks
            (right, toks'')= parseF toks'
        in (PlusExpr left right, toks'')
    IntTok x -> let (left, toks') = parseE (tok:toks) 
    _ -> 
        let (factor, toks') = parseF (tok:toks)
        in (factor, toks')
         
parseF :: [Token] -> (Expr, [Token])
parseF (tok:toks) = 
  case tok of
    MultTok -> 
        let (left, toks') = parseF toks
            (right, toks'')= parseT toks'
        in (MultExpr left right, toks'')
    (IntTok x) ->
        let (term, toks') = parseT (tok:toks)
        in (term , toks')
    _  -> error $ "Invalid factor! Found a " ++ show tok

parseT :: [Token] -> (Expr, [Token])
parseT (tok:toks) = 
  case tok of
    (IntTok x) -> (IntExpr x, toks)
    _  -> error $ "Invalid term ! Found a " ++ show tok


{-
parseEOld :: [Token] -> (Expr, [Token])
parseEOld (tok:toks) = 
  case tok of
    PlusTok -> 
        let (left, toks') = parseEOld toks
            (right, toks'')= parseEOld toks'
            tree = PlusExpr left right
        in (tree, toks'')
    MultTok -> 
        let (left, toks') = parseEOld toks
            (right, toks'')= parseEOld toks'
            tree = MultExpr left right
        in (tree, toks'')
    IntTok x -> (IntExpr x, toks)
    -}
