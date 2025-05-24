import Lexer

main = do
    let input = "decree getValue (Y) is oneself.x innit"
    case scanTokens input of
        Just tokens -> mapM_ print tokens
        Nothing -> putStrLn "Lexical error"
