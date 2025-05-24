module Evaluator where
    import Parser
    import Debug.Trace
    import Data.Maybe





    data Value = IntVal Int
               | DoubleVal Double
               | BoolVal Bool
               | StringVal String
               | UnitVal
               | TupVal Value Value
               | FuncVal Env Var Expr
               | ObjectVal ClassName [(FieldName, Value)] [(MethodName, Var, Expr)]
               deriving (Show, Eq)
    -- doubles not Doubles/ error not a val/ add negation

    type Loc = Int
    type Env = [(Var, Value)]
    type Store = [(Loc, Value)]
    type ClassEnv = [(ClassName, ClassDef)]
    data ClassDef = ClassDef [FieldName] [(MethodName, Var, Expr)]
                    deriving (Show, Eq)
    data Context = Context {env :: Env, store :: Store, classes :: ClassEnv} deriving (Eq, Show)

    lookupEnv :: Var -> Env -> Maybe Value
    lookupEnv = lookup

    updateEnv :: Var -> Value -> Env -> Env
    updateEnv x v env = filter (\(key, _) -> key /= x) env ++ [(x, v)]
    -- remove any pairs with x as a key

    lookupClass :: ClassName -> ClassEnv -> Maybe ClassDef
    lookupClass = lookup

    updateClasses :: ClassName -> ClassDef -> ClassEnv -> ClassEnv
    updateClasses cn cd cenv = filter (\(key, _) -> key /= cn) cenv ++ [(cn, cd)]

    lookupField :: FieldName -> [(FieldName, Value)] -> Maybe Value
    lookupField = lookup

    updateField :: FieldName -> Value -> [(FieldName, Value)] -> [(FieldName, Value)]
    updateField fn v fields = filter (\(key, _) -> key /= fn) fields ++ [(fn, v)]

    lookupMethod :: MethodName -> [(MethodName, Var, Expr)] -> Maybe (Var, Expr)
    lookupMethod mn methods = case lookup mn [(mn', (var, expr)) | (mn', var, expr) <- methods] of
                                Just (var, expr) -> Just (var, expr)
                                Nothing -> Nothing

    -- make a function to evaluate an expression

    realOfValue :: Value -> Maybe Double
    realOfValue (IntVal x) = Just $ fromIntegral x
    realOfValue (DoubleVal f) = Just f
    realOfValue (BoolVal b) = Nothing


    binaryOp :: (Int -> Int -> Int) -> (Double -> Double -> Double) -> Value -> Value -> Maybe Value
    binaryOp f g (IntVal i1) (IntVal i2) = Just $ IntVal (f i1 i2)
    binaryOp f g (DoubleVal f1) (DoubleVal f2) = Just $ DoubleVal (g f1 f2)
    binaryOp f1 g (IntVal i) (DoubleVal f) = Just $ DoubleVal (g (fromIntegral i) f)
    binaryOp f1 g (DoubleVal f) (IntVal i) = Just $ DoubleVal (g f (fromIntegral i))
    binaryOp _ _ _ _ = Nothing


    divOp, expOp, modOp :: Value -> Value -> Maybe Value
    divOp (IntVal i1) (IntVal i2) = Just $ IntVal (i1 `div` i2)
    divOp (DoubleVal f1) (DoubleVal f2) = Just $ DoubleVal (f1 / f2)
    divOp (IntVal i) (DoubleVal f) = Just $ DoubleVal (fromIntegral i / f)
    divOp (DoubleVal f) (IntVal i) = Just $ DoubleVal (f / fromIntegral i)
    divOp _ _ = Nothing

    expOp (IntVal i1) (IntVal i2) = Just $ IntVal (i1 ^ i2) --integer exponents with ^
    expOp (DoubleVal f1) (DoubleVal f2) = Just $ DoubleVal (f1 ** f2)
    expOp (IntVal i) (DoubleVal f) = Just $ DoubleVal (fromIntegral i ** f)
    expOp (DoubleVal f) (IntVal i) = Just $ DoubleVal (f ** fromIntegral i)
    expOp _ _ = Nothing

    modOp (IntVal i1) (IntVal i2) = if i2 == 0 then Nothing else Just $ IntVal (i1 `mod` i2)
    modOp _ _ = Nothing




    sqrtOp,negateOp :: Value -> Maybe Value
    sqrtOp (IntVal i) = Just$ DoubleVal (sqrt (fromIntegral i))
    sqrtOp (DoubleVal f) = Just$ DoubleVal (sqrt f)
    sqrtOp _ = Nothing

    negateOp (IntVal i) = Just$ IntVal (-i)
    negateOp (DoubleVal f) = Just$ DoubleVal (-f)
    negateOp _ = Nothing

    eqOp, gtOp, ltOp, geqOp, leqOp :: Value -> Value -> Maybe Value
    eqOp (IntVal i1) (IntVal i2) = Just $ BoolVal $ i1 == i2
    eqOp (DoubleVal f1) (DoubleVal f2) = Just $ BoolVal $ f1 == f2
    eqOp (IntVal i) (DoubleVal f) = Just $ BoolVal $ fromIntegral i == f
    eqOp (DoubleVal f) (IntVal i) = Just $ BoolVal $ f == fromIntegral i
    eqOp (BoolVal b1) (BoolVal b2) = Just $ BoolVal $ b1 == b2
    eqOp (StringVal s1) (StringVal s2) = Just $ BoolVal $ s1 == s2
    eqOp (UnitVal) (UnitVal) = Just $ BoolVal True
    eqOp (TupVal v1 v2) (TupVal v3 v4) = Just$ BoolVal $ eqOp v1 v3 == Just (BoolVal True) && eqOp v2 v4 == Just (BoolVal True)
    eqOp (FuncVal _ _ _) (FuncVal _ _ _) = Just $ BoolVal False
    eqOp _ _ = Just $ BoolVal False

    gtOp (IntVal i1) (IntVal i2) = Just $ BoolVal $  i1 > i2
    gtOp (DoubleVal f1) (DoubleVal f2) = Just $ BoolVal $  f1 > f2
    gtOp (IntVal i) (DoubleVal f) = Just $ BoolVal $  fromIntegral i > f
    gtOp (DoubleVal f) (IntVal i) = Just $ BoolVal $  f > fromIntegral i
    gtOp _ _ = Nothing

    ltOp (IntVal i1) (IntVal i2) = Just $ BoolVal $  i1 < i2
    ltOp (DoubleVal f1) (DoubleVal f2) = Just $ BoolVal $  f1 < f2
    ltOp (IntVal i) (DoubleVal f) = Just $ BoolVal $  fromIntegral i < f
    ltOp (DoubleVal f) (IntVal i) = Just $ BoolVal $  f < fromIntegral i
    ltOp _ _ = Nothing

    geqOp (IntVal i1) (IntVal i2) = Just $ BoolVal $  i1 >= i2
    geqOp (DoubleVal f1) (DoubleVal f2) = Just $ BoolVal $  f1 >= f2
    geqOp (IntVal i) (DoubleVal f) = Just $ BoolVal $  fromIntegral i >= f
    geqOp (DoubleVal f) (IntVal i) = Just $ BoolVal $  f >= fromIntegral i
    geqOp _ _ = Nothing

    leqOp (IntVal i1) (IntVal i2) = Just $ BoolVal $ i1 <= i2
    leqOp (DoubleVal f1) (DoubleVal f2) = Just $ BoolVal $ f1 <= f2
    leqOp (IntVal i) (DoubleVal f) = Just $ BoolVal $  fromIntegral i <= f
    leqOp (DoubleVal f) (IntVal i) = Just $ BoolVal $  f <= fromIntegral i
    leqOp _ _ = Nothing


    evalDec :: Context -> Dec -> Maybe (Context, Value)
    evalDec ctx (ExprDec e) =
        do  (val,st) <- eval ctx e
            Just (ctx{store = st}, val)
    evalDec ctx (HearyeDec var e) =
        do  (val,st) <- eval ctx e
            Just (ctx{store = st, env = updateEnv var val (env ctx)}, UnitVal)
    evalDec ctx (ColonizeDec var e) = -- no clue if this works
        let defaultValue = (UnitVal, store ctx)
            recEnv::Env
            recEnv = updateEnv var lazyVal (env ctx)
            (lazyVal,st) = fromMaybe defaultValue (eval ctx {env = recEnv} e)
        in Just (ctx{store = st, env = recEnv}, UnitVal)
    evalDec ctx (ClassDec className members) =
        let fields = [fname | FieldDecl fname <- members]
            methods = [(mname, var, expr) | MethodDecl mname var expr <- members]
            classDef = ClassDef fields methods
            newClasses = updateClasses className classDef (classes ctx)
        in Just (ctx{classes = newClasses}, UnitVal)



    eval :: Context -> Expr -> Maybe (Value, Store)
    eval ctx (IntExpr i) = Just (IntVal i, store ctx)
    eval ctx (RealExpr f) = Just (DoubleVal f, store ctx)
    eval ctx FeeExpr = Just$ (DoubleVal (exp 1), store ctx)
    eval ctx PhiExpr = Just$ (DoubleVal ((1 + sqrt 5) / 2), store ctx) -- Direct calculation.
    eval ctx PieExpr = Just$ (DoubleVal pi, store ctx) -- Haskell's `pi` constant.
    eval ctx MoleExpr = Just$ (DoubleVal 6.02214076e23, store ctx) -- Avogadro's number.
    eval ctx (NegExpr e) = threadStore negateOp ctx e
    eval ctx (SqrtExpr e) = threadStore sqrtOp ctx e
    eval ctx (IfzExpr e1 e2 e3) =
        case eval ctx e1 of
            Just (IntVal 0, st) -> eval ctx{store = st} e2
            Just (DoubleVal 0, st) -> eval ctx{store = st} e2
            Just (IntVal _, st) -> eval ctx{store = st} e3
            Just (DoubleVal _, st) -> eval ctx{store = st} e3
            _ -> Nothing
    eval ctx (SupposingExpr e1 e2 e3) =
        case eval ctx e1 of
            Just (BoolVal x, st) -> eval ctx{store = st}$ if x then e2 else e3
            _ -> Nothing
    eval ctx (BOpExpr PlusOp e1 e2 ) = threadStore2 (binaryOp (+) (+)) ctx e1 e2
    eval ctx (BOpExpr MinusOp e1 e2 ) = threadStore2 (binaryOp (-) (-)) ctx e1 e2
    eval ctx (BOpExpr MultOp e1 e2 ) = threadStore2 (binaryOp (*) (*)) ctx e1 e2
    eval ctx (BOpExpr DivOp e1 e2 ) = threadStore2 divOp ctx e1 e2
    eval ctx (BOpExpr ModOp e1 e2 ) = threadStore2 modOp ctx e1 e2
    eval ctx (BOpExpr ExpOp e1 e2 ) = threadStore2 expOp ctx e1 e2
    eval ctx (BOpExpr EqOp e1 e2 ) = threadStore2 eqOp ctx e1 e2
    eval ctx (BOpExpr GtOp e1 e2 ) = threadStore2 gtOp ctx e1 e2
    eval ctx (BOpExpr LtOp e1 e2 ) = threadStore2 ltOp ctx e1 e2
    eval ctx (BOpExpr GeqOp e1 e2 ) = threadStore2 geqOp ctx e1 e2
    eval ctx (BOpExpr LeqOp e1 e2 ) = threadStore2 leqOp ctx e1 e2
    eval ctx (BOpExpr AndOp e1 e2 ) =
        case eval ctx e1 of
            r@(Just (BoolVal False, st)) -> r
            Just (BoolVal True, st) ->
                case eval ctx{store =st} e2 of
                    r@(Just (BoolVal x,st)) -> r
                    _ -> Nothing
            _ -> Nothing
    eval ctx (BOpExpr OrOp e1 e2 ) =
        case eval ctx e1 of
            r@(Just (BoolVal True, st)) -> r
            Just (BoolVal False, st) ->
                case eval ctx{store =st} e2 of
                    r@(Just (BoolVal x,st)) -> r
                    _ -> Nothing
            _ -> Nothing
    eval ctx (BoolExpr b) = Just (BoolVal b, store ctx)
    eval ctx (StringExpr s) = Just (StringVal s , store ctx)
    eval ctx (VarExpr x) =
        do  val <-lookupEnv x (env ctx)
            Just (val, store ctx)
    eval ctx (OiExpr var e1 e2) =
        do  (val,st) <- eval ctx e1
            (val2,st2) <- eval ctx{store = st, env = updateEnv var val (env ctx)} e2
            Just (val2,st2)
    eval ctx (MateExpr e1) =
        case eval ctx e1 of
            Just (TupVal v1 v2,st) -> Just (v1,st)
            _ -> Nothing
    eval ctx (BlokeExpr e1) =
        case eval ctx e1 of
            Just (TupVal v1 v2, st) -> Just (v2, st)
            _ -> Nothing
    eval ctx (TupleExpr e1 e2) =
        do  (val1,st) <- eval ctx e1
            (val2,st2) <- eval ctx{store = st} e2
            Just (TupVal val1 val2, st2)
    eval ctx UnitExpr = Just (UnitVal, store ctx)
    eval ctx (NotExpr e) =
        case eval ctx e of
            Just (BoolVal b, st) -> Just (BoolVal (not b), st)
            _ -> Nothing
    eval ctx (FuncExpr var e) = Just (FuncVal (env ctx) var e, store ctx)
    eval ctx (ApplyExpr func e) =
        do  (funcVal,st) <- eval ctx func
            (argVal,st2) <- eval ctx{store = st} e
            case funcVal of
                FuncVal ctx2 var body -> eval ctx{store = st, env = updateEnv var argVal ctx2} body
                _ -> Nothing
    eval ctx (AssignExpr e1 e2) =
        case eval ctx e1 of
            Just (FuncVal ctx2 var body, st) ->
                do  (val,st2) <- eval ctx{store = st} e2
                    Just (val, st2)
            Just (TupVal v1 v2, st) ->
                case eval ctx{store = st} e2 of
                    Just (val,st2) -> Just (val, st2)
                    _ -> Nothing
            _ -> Nothing
    eval ctx (SeqExpr e1 e2) =
        case eval ctx e1 of
            Just (_,st) -> eval ctx{store = st} e2
            _ -> Nothing
    eval ctx (RefExpr e) =
        case eval ctx e of
            Just (val,st) -> Just (IntVal (length (store ctx)), (length (store ctx), val):st)
            _ -> Nothing
    eval ctx (WhilstExpr e1 e2) =
        case eval ctx e1 of
            Just (BoolVal True, st) ->
                case eval ctx{store = st} e2 of
                    Just (val,st2) -> eval ctx{store = st2} (WhilstExpr e1 e2)
                    _ -> Nothing
            Just (BoolVal False, st) -> Just (UnitVal, st)
            _ -> Nothing
    eval ctx (NewExpr className args) =
        case lookupClass className (classes ctx) of
            Just (ClassDef fields methods) ->
                do  (argVals, st) <- evalExprList ctx args
                    let fieldValues = zip fields argVals
                    Just (ObjectVal className fieldValues methods, st)
            Nothing -> Nothing
    eval ctx (MethodCallExpr objExpr methodName argExpr) =
        do  (objVal, st) <- eval ctx objExpr
            (argVal, st2) <- eval ctx{store = st} argExpr
            case objVal of
                ObjectVal _ _ methods ->
                    case lookupMethod methodName methods of
                        Just (param, body) ->
                            let newEnv = updateEnv param argVal (updateEnv "oneself" objVal (env ctx))
                            in eval ctx{store = st2, env = newEnv} body
                        Nothing -> Nothing
                _ -> Nothing
    eval ctx (FieldAccessExpr objExpr fieldName) =
        do  (objVal, st) <- eval ctx objExpr
            case objVal of
                ObjectVal _ fields _ ->
                    case lookupField fieldName fields of
                        Just val -> Just (val, st)
                        Nothing -> Nothing
                _ -> Nothing
    eval ctx OneselfExpr =
        do  val <- lookupEnv "oneself" (env ctx)
            Just (val, store ctx)



    evalExprList :: Context -> [Expr] -> Maybe ([Value], Store)
    evalExprList ctx [] = Just ([], store ctx)
    evalExprList ctx (e:es) =
        do  (val, st) <- eval ctx e
            (vals, st2) <- evalExprList ctx{store = st} es
            Just (val:vals, st2)

    -- eval env expr = traceShow expr undefined

    showVal :: Value -> String
    showVal (IntVal i) = show i
    showVal (DoubleVal f) = show f
    showVal (BoolVal b) = if b then "ace" else "rank"
    showVal (StringVal s) = s
    showVal UnitVal = "#"
    showVal (TupVal v1 v2) = "/" ++ showVal v1 ++ ", " ++ showVal v2 ++ "\\"
    showVal (FuncVal _ var _) = "func " ++ var
    showVal (ObjectVal className _ _) = "object " ++ className

    threadStore :: (Value -> Maybe Value) -> Context -> Expr -> Maybe (Value, Store)
    threadStore f ctx a =
        do (av,st) <- eval ctx a
           fr <- f av
           Just (fr, st)
    threadStore2 :: (Value -> Value -> Maybe Value) -> Context -> Expr -> Expr -> Maybe (Value, Store)
    threadStore2 f ctx a b =
        do (av,st) <- eval ctx a
           (bv,st2) <- eval ctx{store = st} b
           fr <- f av bv
           Just (fr, st2)
    -- updateMap :: [(a,b)] -> a -> b -> Maybe [(a,b)]
