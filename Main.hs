module Main where
import Parser
import Evaluator
import Lexer
import Control.Exception (catch, IOException)


repl :: Context -> IO ()
repl ctx = do
    -- putStr "british> "
    result <- catch (fmap Just getLine) (\e -> const (return Nothing) (e :: IOException))
    case result of
        Nothing -> return ()  -- EOF reached, exit gracefully
        Just input -> processInput input
  where
    processInput input =
        if input == ":q"
           then do
            putStr "Oy, Get Out!\n"
            return ()
           else
                case scanTokens input of
                    Nothing -> do putStrLn $ "Lexical error: " ++ input
                                  repl ctx
                    Just [] -> repl ctx
                    Just tokens ->
                        case parse tokens of -- Implement `parse` to use your Parser.hs functionality
                            Nothing -> do putStrLn $ "Parse error: " ++ input
                                          repl ctx
                            Just dec ->
                                case evalDec ctx dec of
                                    Just (nctx, UnitVal) -> repl nctx
                                    Just (nctx, value) ->
                                        do putStrLn$ showVal value -- Implement `eval` to use your Evaluator.hs functionality
                                           repl nctx
                                    Nothing -> do putStrLn $ "Eval error: " ++ input
                                                  repl ctx


main = repl (Context [] [] [])
