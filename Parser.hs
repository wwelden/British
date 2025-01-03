{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import Data.Maybe
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,731) ([55264,60418,48179,49236,1455,18392,43376,57344,4067,3584,544,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,44992,55301,28743,32937,2911,36784,21216,48897,24598,49439,677,11646,16064,19330,64517,32858,1149,2711,46584,64256,11784,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5823,8032,42433,2,0,8,0,0,4096,0,0,32,0,0,16384,0,0,0,0,0,0,44992,55301,28743,32937,2911,36784,21216,48897,24598,49439,677,0,0,0,0,0,16,0,0,8192,0,0,0,8192,0,0,0,64,0,61936,7,36867,57345,4067,1536,672,51136,31,16396,32260,49197,33342,1355,23292,32128,38660,10,0,0,64,0,0,32,0,63736,33795,34817,61440,2033,776,272,512,0,0,49152,8167,3072,1088,40832,63,32792,8,32543,12288,4360,8192,0,0,61440,363,4598,10844,55264,60418,47139,49236,1455,18392,43376,24448,45067,57487,338,5823,8032,42433,32258,49197,33342,1355,23292,32128,38660,63498,181,2299,5422,27632,62977,23569,57386,727,9196,21688,44992,55301,28743,32937,2911,36784,21216,48897,24598,49439,677,11646,16064,19330,5,0,0,0,46584,64256,11784,61461,363,4598,10844,63488,40,0,8,20976,0,0,57344,4067,1536,544,51136,31,16388,32772,655,0,2176,7936,5,0,17,2622,0,8704,31744,20,0,68,8320,0,0,61440,81,0,272,33280,0,0,49152,8143,3072,1088,34816,2,0,0,1296,0,0,14336,10,0,0,5232,0,0,55264,60418,47139,84,0,0,0,0,0,0,0,5823,8032,42433,32258,49197,33342,1355,23292,32128,38660,63498,181,2299,5422,64512,508,192,68,63992,32771,34817,44992,55301,28743,169,0,0,0,48896,24598,49439,677,11646,16064,19330,5,32543,28672,4352,15872,254,224,34,64636,49153,17408,0,0,0,0,0,0,0,57344,4067,1536,544,51136,159,16396,32772,16271,6272,2176,7936,127,49,17,65086,24576,8832,0,0,0,0,0,0,0,44992,55301,28743,32937,2911,36784,21216,48897,24598,49439,677,0,0,0,0,0,0,0,15872,254,96,34,64636,49153,17408,63488,1016,384,136,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Dec","Expr","int","real","fee","pie","phi","mole","'+'","'-'","'*'","'/'","'('","')'","'['","']'","'%'","'='","'^'","'>'","'<'","leq","geq","sqrt","ifz","for","ace","rank","var","string","supposing","hence","otherwise","hearye","oi","is","'/\\\\'","'\\\\/'","innit","colonize","cheers","mate","bloke","','","'#'","'=>'","'\\\\'","display","'=='","whilst","doeth","'|'","'~'","%eof"]
        bit_start = st Prelude.* 57
        bit_end = (st Prelude.+ 1) Prelude.* 57
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..56]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (6) = happyShift action_3
action_0 (7) = happyShift action_4
action_0 (8) = happyShift action_5
action_0 (9) = happyShift action_6
action_0 (10) = happyShift action_7
action_0 (11) = happyShift action_8
action_0 (13) = happyShift action_9
action_0 (15) = happyShift action_10
action_0 (16) = happyShift action_11
action_0 (18) = happyShift action_12
action_0 (27) = happyShift action_13
action_0 (28) = happyShift action_14
action_0 (30) = happyShift action_15
action_0 (31) = happyShift action_16
action_0 (32) = happyShift action_17
action_0 (33) = happyShift action_18
action_0 (34) = happyShift action_19
action_0 (37) = happyShift action_29
action_0 (38) = happyShift action_20
action_0 (43) = happyShift action_30
action_0 (44) = happyShift action_21
action_0 (45) = happyShift action_22
action_0 (46) = happyShift action_23
action_0 (48) = happyShift action_24
action_0 (51) = happyShift action_25
action_0 (53) = happyShift action_26
action_0 (55) = happyShift action_27
action_0 (4) = happyGoto action_28
action_0 (5) = happyGoto action_2
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_3
action_1 (7) = happyShift action_4
action_1 (8) = happyShift action_5
action_1 (9) = happyShift action_6
action_1 (10) = happyShift action_7
action_1 (11) = happyShift action_8
action_1 (13) = happyShift action_9
action_1 (15) = happyShift action_10
action_1 (16) = happyShift action_11
action_1 (18) = happyShift action_12
action_1 (27) = happyShift action_13
action_1 (28) = happyShift action_14
action_1 (30) = happyShift action_15
action_1 (31) = happyShift action_16
action_1 (32) = happyShift action_17
action_1 (33) = happyShift action_18
action_1 (34) = happyShift action_19
action_1 (38) = happyShift action_20
action_1 (44) = happyShift action_21
action_1 (45) = happyShift action_22
action_1 (46) = happyShift action_23
action_1 (48) = happyShift action_24
action_1 (51) = happyShift action_25
action_1 (53) = happyShift action_26
action_1 (55) = happyShift action_27
action_1 (5) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (12) = happyShift action_47
action_2 (13) = happyShift action_48
action_2 (14) = happyShift action_49
action_2 (15) = happyShift action_50
action_2 (16) = happyShift action_51
action_2 (20) = happyShift action_52
action_2 (21) = happyShift action_53
action_2 (22) = happyShift action_54
action_2 (23) = happyShift action_55
action_2 (24) = happyShift action_56
action_2 (25) = happyShift action_57
action_2 (26) = happyShift action_58
action_2 (40) = happyShift action_59
action_2 (41) = happyShift action_60
action_2 (42) = happyShift action_61
action_2 (52) = happyShift action_62
action_2 (56) = happyShift action_63
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_4

action_4 _ = happyReduce_5

action_5 _ = happyReduce_6

action_6 _ = happyReduce_8

action_7 _ = happyReduce_7

action_8 _ = happyReduce_9

action_9 (6) = happyShift action_3
action_9 (7) = happyShift action_4
action_9 (8) = happyShift action_5
action_9 (9) = happyShift action_6
action_9 (10) = happyShift action_7
action_9 (11) = happyShift action_8
action_9 (13) = happyShift action_9
action_9 (15) = happyShift action_10
action_9 (16) = happyShift action_11
action_9 (18) = happyShift action_12
action_9 (27) = happyShift action_13
action_9 (28) = happyShift action_14
action_9 (30) = happyShift action_15
action_9 (31) = happyShift action_16
action_9 (32) = happyShift action_17
action_9 (33) = happyShift action_18
action_9 (34) = happyShift action_19
action_9 (38) = happyShift action_20
action_9 (44) = happyShift action_21
action_9 (45) = happyShift action_22
action_9 (46) = happyShift action_23
action_9 (48) = happyShift action_24
action_9 (51) = happyShift action_25
action_9 (53) = happyShift action_26
action_9 (55) = happyShift action_27
action_9 (5) = happyGoto action_46
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (6) = happyShift action_3
action_10 (7) = happyShift action_4
action_10 (8) = happyShift action_5
action_10 (9) = happyShift action_6
action_10 (10) = happyShift action_7
action_10 (11) = happyShift action_8
action_10 (13) = happyShift action_9
action_10 (15) = happyShift action_10
action_10 (16) = happyShift action_11
action_10 (18) = happyShift action_12
action_10 (27) = happyShift action_13
action_10 (28) = happyShift action_14
action_10 (30) = happyShift action_15
action_10 (31) = happyShift action_16
action_10 (32) = happyShift action_17
action_10 (33) = happyShift action_18
action_10 (34) = happyShift action_19
action_10 (38) = happyShift action_20
action_10 (44) = happyShift action_21
action_10 (45) = happyShift action_22
action_10 (46) = happyShift action_23
action_10 (48) = happyShift action_24
action_10 (51) = happyShift action_25
action_10 (53) = happyShift action_26
action_10 (55) = happyShift action_27
action_10 (5) = happyGoto action_45
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (6) = happyShift action_3
action_11 (7) = happyShift action_4
action_11 (8) = happyShift action_5
action_11 (9) = happyShift action_6
action_11 (10) = happyShift action_7
action_11 (11) = happyShift action_8
action_11 (13) = happyShift action_9
action_11 (15) = happyShift action_10
action_11 (16) = happyShift action_11
action_11 (18) = happyShift action_12
action_11 (27) = happyShift action_13
action_11 (28) = happyShift action_14
action_11 (30) = happyShift action_15
action_11 (31) = happyShift action_16
action_11 (32) = happyShift action_17
action_11 (33) = happyShift action_18
action_11 (34) = happyShift action_19
action_11 (38) = happyShift action_20
action_11 (44) = happyShift action_21
action_11 (45) = happyShift action_22
action_11 (46) = happyShift action_23
action_11 (48) = happyShift action_24
action_11 (51) = happyShift action_25
action_11 (53) = happyShift action_26
action_11 (55) = happyShift action_27
action_11 (5) = happyGoto action_44
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_3
action_12 (7) = happyShift action_4
action_12 (8) = happyShift action_5
action_12 (9) = happyShift action_6
action_12 (10) = happyShift action_7
action_12 (11) = happyShift action_8
action_12 (13) = happyShift action_9
action_12 (15) = happyShift action_10
action_12 (16) = happyShift action_11
action_12 (18) = happyShift action_12
action_12 (27) = happyShift action_13
action_12 (28) = happyShift action_14
action_12 (30) = happyShift action_15
action_12 (31) = happyShift action_16
action_12 (32) = happyShift action_17
action_12 (33) = happyShift action_18
action_12 (34) = happyShift action_19
action_12 (38) = happyShift action_20
action_12 (44) = happyShift action_21
action_12 (45) = happyShift action_22
action_12 (46) = happyShift action_23
action_12 (48) = happyShift action_24
action_12 (51) = happyShift action_25
action_12 (53) = happyShift action_26
action_12 (55) = happyShift action_27
action_12 (5) = happyGoto action_43
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (6) = happyShift action_3
action_13 (7) = happyShift action_4
action_13 (8) = happyShift action_5
action_13 (9) = happyShift action_6
action_13 (10) = happyShift action_7
action_13 (11) = happyShift action_8
action_13 (13) = happyShift action_9
action_13 (15) = happyShift action_10
action_13 (16) = happyShift action_11
action_13 (18) = happyShift action_12
action_13 (27) = happyShift action_13
action_13 (28) = happyShift action_14
action_13 (30) = happyShift action_15
action_13 (31) = happyShift action_16
action_13 (32) = happyShift action_17
action_13 (33) = happyShift action_18
action_13 (34) = happyShift action_19
action_13 (38) = happyShift action_20
action_13 (44) = happyShift action_21
action_13 (45) = happyShift action_22
action_13 (46) = happyShift action_23
action_13 (48) = happyShift action_24
action_13 (51) = happyShift action_25
action_13 (53) = happyShift action_26
action_13 (55) = happyShift action_27
action_13 (5) = happyGoto action_42
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (6) = happyShift action_3
action_14 (7) = happyShift action_4
action_14 (8) = happyShift action_5
action_14 (9) = happyShift action_6
action_14 (10) = happyShift action_7
action_14 (11) = happyShift action_8
action_14 (13) = happyShift action_9
action_14 (15) = happyShift action_10
action_14 (16) = happyShift action_11
action_14 (18) = happyShift action_12
action_14 (27) = happyShift action_13
action_14 (28) = happyShift action_14
action_14 (30) = happyShift action_15
action_14 (31) = happyShift action_16
action_14 (32) = happyShift action_17
action_14 (33) = happyShift action_18
action_14 (34) = happyShift action_19
action_14 (38) = happyShift action_20
action_14 (44) = happyShift action_21
action_14 (45) = happyShift action_22
action_14 (46) = happyShift action_23
action_14 (48) = happyShift action_24
action_14 (51) = happyShift action_25
action_14 (53) = happyShift action_26
action_14 (55) = happyShift action_27
action_14 (5) = happyGoto action_41
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_10

action_16 _ = happyReduce_11

action_17 _ = happyReduce_13

action_18 _ = happyReduce_12

action_19 (6) = happyShift action_3
action_19 (7) = happyShift action_4
action_19 (8) = happyShift action_5
action_19 (9) = happyShift action_6
action_19 (10) = happyShift action_7
action_19 (11) = happyShift action_8
action_19 (13) = happyShift action_9
action_19 (15) = happyShift action_10
action_19 (16) = happyShift action_11
action_19 (18) = happyShift action_12
action_19 (27) = happyShift action_13
action_19 (28) = happyShift action_14
action_19 (30) = happyShift action_15
action_19 (31) = happyShift action_16
action_19 (32) = happyShift action_17
action_19 (33) = happyShift action_18
action_19 (34) = happyShift action_19
action_19 (38) = happyShift action_20
action_19 (44) = happyShift action_21
action_19 (45) = happyShift action_22
action_19 (46) = happyShift action_23
action_19 (48) = happyShift action_24
action_19 (51) = happyShift action_25
action_19 (53) = happyShift action_26
action_19 (55) = happyShift action_27
action_19 (5) = happyGoto action_40
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (32) = happyShift action_39
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (32) = happyShift action_38
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (16) = happyShift action_37
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (16) = happyShift action_36
action_23 _ = happyFail (happyExpListPerState 23)

action_24 _ = happyReduce_37

action_25 (6) = happyShift action_3
action_25 (7) = happyShift action_4
action_25 (8) = happyShift action_5
action_25 (9) = happyShift action_6
action_25 (10) = happyShift action_7
action_25 (11) = happyShift action_8
action_25 (13) = happyShift action_9
action_25 (15) = happyShift action_10
action_25 (16) = happyShift action_11
action_25 (18) = happyShift action_12
action_25 (27) = happyShift action_13
action_25 (28) = happyShift action_14
action_25 (30) = happyShift action_15
action_25 (31) = happyShift action_16
action_25 (32) = happyShift action_17
action_25 (33) = happyShift action_18
action_25 (34) = happyShift action_19
action_25 (38) = happyShift action_20
action_25 (44) = happyShift action_21
action_25 (45) = happyShift action_22
action_25 (46) = happyShift action_23
action_25 (48) = happyShift action_24
action_25 (51) = happyShift action_25
action_25 (53) = happyShift action_26
action_25 (55) = happyShift action_27
action_25 (5) = happyGoto action_35
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_3
action_26 (7) = happyShift action_4
action_26 (8) = happyShift action_5
action_26 (9) = happyShift action_6
action_26 (10) = happyShift action_7
action_26 (11) = happyShift action_8
action_26 (13) = happyShift action_9
action_26 (15) = happyShift action_10
action_26 (16) = happyShift action_11
action_26 (18) = happyShift action_12
action_26 (27) = happyShift action_13
action_26 (28) = happyShift action_14
action_26 (30) = happyShift action_15
action_26 (31) = happyShift action_16
action_26 (32) = happyShift action_17
action_26 (33) = happyShift action_18
action_26 (34) = happyShift action_19
action_26 (38) = happyShift action_20
action_26 (44) = happyShift action_21
action_26 (45) = happyShift action_22
action_26 (46) = happyShift action_23
action_26 (48) = happyShift action_24
action_26 (51) = happyShift action_25
action_26 (53) = happyShift action_26
action_26 (55) = happyShift action_27
action_26 (5) = happyGoto action_34
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_3
action_27 (7) = happyShift action_4
action_27 (8) = happyShift action_5
action_27 (9) = happyShift action_6
action_27 (10) = happyShift action_7
action_27 (11) = happyShift action_8
action_27 (13) = happyShift action_9
action_27 (15) = happyShift action_10
action_27 (16) = happyShift action_11
action_27 (18) = happyShift action_12
action_27 (27) = happyShift action_13
action_27 (28) = happyShift action_14
action_27 (30) = happyShift action_15
action_27 (31) = happyShift action_16
action_27 (32) = happyShift action_17
action_27 (33) = happyShift action_18
action_27 (34) = happyShift action_19
action_27 (38) = happyShift action_20
action_27 (44) = happyShift action_21
action_27 (45) = happyShift action_22
action_27 (46) = happyShift action_23
action_27 (48) = happyShift action_24
action_27 (51) = happyShift action_25
action_27 (53) = happyShift action_26
action_27 (55) = happyShift action_27
action_27 (5) = happyGoto action_33
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (57) = happyAccept
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (32) = happyShift action_32
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (32) = happyShift action_31
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (39) = happyShift action_92
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (39) = happyShift action_91
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (12) = happyShift action_47
action_33 (13) = happyShift action_48
action_33 (14) = happyShift action_49
action_33 (15) = happyShift action_50
action_33 (16) = happyShift action_51
action_33 (20) = happyShift action_52
action_33 (21) = happyShift action_53
action_33 (22) = happyShift action_54
action_33 (23) = happyShift action_55
action_33 (24) = happyShift action_56
action_33 (25) = happyShift action_57
action_33 (26) = happyShift action_58
action_33 (40) = happyShift action_59
action_33 (41) = happyShift action_60
action_33 (52) = happyShift action_62
action_33 (55) = happyShift action_90
action_33 (56) = happyShift action_63
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (12) = happyShift action_47
action_34 (13) = happyShift action_48
action_34 (14) = happyShift action_49
action_34 (15) = happyShift action_50
action_34 (16) = happyShift action_51
action_34 (20) = happyShift action_52
action_34 (21) = happyShift action_53
action_34 (22) = happyShift action_54
action_34 (23) = happyShift action_55
action_34 (24) = happyShift action_56
action_34 (25) = happyShift action_57
action_34 (26) = happyShift action_58
action_34 (40) = happyShift action_59
action_34 (41) = happyShift action_60
action_34 (52) = happyShift action_62
action_34 (54) = happyShift action_89
action_34 (56) = happyShift action_63
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (12) = happyShift action_47
action_35 (13) = happyShift action_48
action_35 (14) = happyShift action_49
action_35 (15) = happyShift action_50
action_35 (16) = happyShift action_51
action_35 (20) = happyShift action_52
action_35 (21) = happyShift action_53
action_35 (22) = happyShift action_54
action_35 (23) = happyShift action_55
action_35 (24) = happyShift action_56
action_35 (25) = happyShift action_57
action_35 (26) = happyShift action_58
action_35 (40) = happyShift action_59
action_35 (41) = happyShift action_60
action_35 (52) = happyShift action_62
action_35 (56) = happyShift action_63
action_35 _ = happyReduce_41

action_36 (6) = happyShift action_3
action_36 (7) = happyShift action_4
action_36 (8) = happyShift action_5
action_36 (9) = happyShift action_6
action_36 (10) = happyShift action_7
action_36 (11) = happyShift action_8
action_36 (13) = happyShift action_9
action_36 (15) = happyShift action_10
action_36 (16) = happyShift action_11
action_36 (18) = happyShift action_12
action_36 (27) = happyShift action_13
action_36 (28) = happyShift action_14
action_36 (30) = happyShift action_15
action_36 (31) = happyShift action_16
action_36 (32) = happyShift action_17
action_36 (33) = happyShift action_18
action_36 (34) = happyShift action_19
action_36 (38) = happyShift action_20
action_36 (44) = happyShift action_21
action_36 (45) = happyShift action_22
action_36 (46) = happyShift action_23
action_36 (48) = happyShift action_24
action_36 (51) = happyShift action_25
action_36 (53) = happyShift action_26
action_36 (55) = happyShift action_27
action_36 (5) = happyGoto action_88
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (6) = happyShift action_3
action_37 (7) = happyShift action_4
action_37 (8) = happyShift action_5
action_37 (9) = happyShift action_6
action_37 (10) = happyShift action_7
action_37 (11) = happyShift action_8
action_37 (13) = happyShift action_9
action_37 (15) = happyShift action_10
action_37 (16) = happyShift action_11
action_37 (18) = happyShift action_12
action_37 (27) = happyShift action_13
action_37 (28) = happyShift action_14
action_37 (30) = happyShift action_15
action_37 (31) = happyShift action_16
action_37 (32) = happyShift action_17
action_37 (33) = happyShift action_18
action_37 (34) = happyShift action_19
action_37 (38) = happyShift action_20
action_37 (44) = happyShift action_21
action_37 (45) = happyShift action_22
action_37 (46) = happyShift action_23
action_37 (48) = happyShift action_24
action_37 (51) = happyShift action_25
action_37 (53) = happyShift action_26
action_37 (55) = happyShift action_27
action_37 (5) = happyGoto action_87
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (49) = happyShift action_86
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (39) = happyShift action_85
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (12) = happyShift action_47
action_40 (13) = happyShift action_48
action_40 (14) = happyShift action_49
action_40 (15) = happyShift action_50
action_40 (16) = happyShift action_51
action_40 (20) = happyShift action_52
action_40 (21) = happyShift action_53
action_40 (22) = happyShift action_54
action_40 (23) = happyShift action_55
action_40 (24) = happyShift action_56
action_40 (25) = happyShift action_57
action_40 (26) = happyShift action_58
action_40 (35) = happyShift action_84
action_40 (40) = happyShift action_59
action_40 (41) = happyShift action_60
action_40 (52) = happyShift action_62
action_40 (56) = happyShift action_63
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (12) = happyShift action_47
action_41 (13) = happyShift action_48
action_41 (14) = happyShift action_49
action_41 (15) = happyShift action_50
action_41 (16) = happyShift action_51
action_41 (20) = happyShift action_52
action_41 (21) = happyShift action_53
action_41 (22) = happyShift action_54
action_41 (23) = happyShift action_55
action_41 (24) = happyShift action_56
action_41 (25) = happyShift action_57
action_41 (26) = happyShift action_58
action_41 (35) = happyShift action_83
action_41 (40) = happyShift action_59
action_41 (41) = happyShift action_60
action_41 (52) = happyShift action_62
action_41 (56) = happyShift action_63
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (16) = happyShift action_51
action_42 _ = happyReduce_16

action_43 (12) = happyShift action_47
action_43 (13) = happyShift action_48
action_43 (14) = happyShift action_49
action_43 (15) = happyShift action_50
action_43 (16) = happyShift action_51
action_43 (19) = happyShift action_82
action_43 (20) = happyShift action_52
action_43 (21) = happyShift action_53
action_43 (22) = happyShift action_54
action_43 (23) = happyShift action_55
action_43 (24) = happyShift action_56
action_43 (25) = happyShift action_57
action_43 (26) = happyShift action_58
action_43 (40) = happyShift action_59
action_43 (41) = happyShift action_60
action_43 (52) = happyShift action_62
action_43 (56) = happyShift action_63
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (12) = happyShift action_47
action_44 (13) = happyShift action_48
action_44 (14) = happyShift action_49
action_44 (15) = happyShift action_50
action_44 (16) = happyShift action_51
action_44 (17) = happyShift action_81
action_44 (20) = happyShift action_52
action_44 (21) = happyShift action_53
action_44 (22) = happyShift action_54
action_44 (23) = happyShift action_55
action_44 (24) = happyShift action_56
action_44 (25) = happyShift action_57
action_44 (26) = happyShift action_58
action_44 (40) = happyShift action_59
action_44 (41) = happyShift action_60
action_44 (52) = happyShift action_62
action_44 (56) = happyShift action_63
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (12) = happyShift action_47
action_45 (13) = happyShift action_48
action_45 (14) = happyShift action_49
action_45 (15) = happyShift action_50
action_45 (16) = happyShift action_51
action_45 (20) = happyShift action_52
action_45 (21) = happyShift action_53
action_45 (22) = happyShift action_54
action_45 (23) = happyShift action_55
action_45 (24) = happyShift action_56
action_45 (25) = happyShift action_57
action_45 (26) = happyShift action_58
action_45 (40) = happyShift action_59
action_45 (41) = happyShift action_60
action_45 (47) = happyShift action_80
action_45 (52) = happyShift action_62
action_45 (56) = happyShift action_63
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (16) = happyShift action_51
action_46 _ = happyReduce_17

action_47 (6) = happyShift action_3
action_47 (7) = happyShift action_4
action_47 (8) = happyShift action_5
action_47 (9) = happyShift action_6
action_47 (10) = happyShift action_7
action_47 (11) = happyShift action_8
action_47 (13) = happyShift action_9
action_47 (15) = happyShift action_10
action_47 (16) = happyShift action_11
action_47 (18) = happyShift action_12
action_47 (27) = happyShift action_13
action_47 (28) = happyShift action_14
action_47 (30) = happyShift action_15
action_47 (31) = happyShift action_16
action_47 (32) = happyShift action_17
action_47 (33) = happyShift action_18
action_47 (34) = happyShift action_19
action_47 (38) = happyShift action_20
action_47 (44) = happyShift action_21
action_47 (45) = happyShift action_22
action_47 (46) = happyShift action_23
action_47 (48) = happyShift action_24
action_47 (51) = happyShift action_25
action_47 (53) = happyShift action_26
action_47 (55) = happyShift action_27
action_47 (5) = happyGoto action_79
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (6) = happyShift action_3
action_48 (7) = happyShift action_4
action_48 (8) = happyShift action_5
action_48 (9) = happyShift action_6
action_48 (10) = happyShift action_7
action_48 (11) = happyShift action_8
action_48 (13) = happyShift action_9
action_48 (15) = happyShift action_10
action_48 (16) = happyShift action_11
action_48 (18) = happyShift action_12
action_48 (27) = happyShift action_13
action_48 (28) = happyShift action_14
action_48 (30) = happyShift action_15
action_48 (31) = happyShift action_16
action_48 (32) = happyShift action_17
action_48 (33) = happyShift action_18
action_48 (34) = happyShift action_19
action_48 (38) = happyShift action_20
action_48 (44) = happyShift action_21
action_48 (45) = happyShift action_22
action_48 (46) = happyShift action_23
action_48 (48) = happyShift action_24
action_48 (51) = happyShift action_25
action_48 (53) = happyShift action_26
action_48 (55) = happyShift action_27
action_48 (5) = happyGoto action_78
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (6) = happyShift action_3
action_49 (7) = happyShift action_4
action_49 (8) = happyShift action_5
action_49 (9) = happyShift action_6
action_49 (10) = happyShift action_7
action_49 (11) = happyShift action_8
action_49 (13) = happyShift action_9
action_49 (15) = happyShift action_10
action_49 (16) = happyShift action_11
action_49 (18) = happyShift action_12
action_49 (27) = happyShift action_13
action_49 (28) = happyShift action_14
action_49 (30) = happyShift action_15
action_49 (31) = happyShift action_16
action_49 (32) = happyShift action_17
action_49 (33) = happyShift action_18
action_49 (34) = happyShift action_19
action_49 (38) = happyShift action_20
action_49 (44) = happyShift action_21
action_49 (45) = happyShift action_22
action_49 (46) = happyShift action_23
action_49 (48) = happyShift action_24
action_49 (51) = happyShift action_25
action_49 (53) = happyShift action_26
action_49 (55) = happyShift action_27
action_49 (5) = happyGoto action_77
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (6) = happyShift action_3
action_50 (7) = happyShift action_4
action_50 (8) = happyShift action_5
action_50 (9) = happyShift action_6
action_50 (10) = happyShift action_7
action_50 (11) = happyShift action_8
action_50 (13) = happyShift action_9
action_50 (15) = happyShift action_10
action_50 (16) = happyShift action_11
action_50 (18) = happyShift action_12
action_50 (27) = happyShift action_13
action_50 (28) = happyShift action_14
action_50 (30) = happyShift action_15
action_50 (31) = happyShift action_16
action_50 (32) = happyShift action_17
action_50 (33) = happyShift action_18
action_50 (34) = happyShift action_19
action_50 (38) = happyShift action_20
action_50 (44) = happyShift action_21
action_50 (45) = happyShift action_22
action_50 (46) = happyShift action_23
action_50 (48) = happyShift action_24
action_50 (51) = happyShift action_25
action_50 (53) = happyShift action_26
action_50 (55) = happyShift action_27
action_50 (5) = happyGoto action_76
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (6) = happyShift action_3
action_51 (7) = happyShift action_4
action_51 (8) = happyShift action_5
action_51 (9) = happyShift action_6
action_51 (10) = happyShift action_7
action_51 (11) = happyShift action_8
action_51 (13) = happyShift action_9
action_51 (15) = happyShift action_10
action_51 (16) = happyShift action_11
action_51 (18) = happyShift action_12
action_51 (27) = happyShift action_13
action_51 (28) = happyShift action_14
action_51 (30) = happyShift action_15
action_51 (31) = happyShift action_16
action_51 (32) = happyShift action_17
action_51 (33) = happyShift action_18
action_51 (34) = happyShift action_19
action_51 (38) = happyShift action_20
action_51 (44) = happyShift action_21
action_51 (45) = happyShift action_22
action_51 (46) = happyShift action_23
action_51 (48) = happyShift action_24
action_51 (51) = happyShift action_25
action_51 (53) = happyShift action_26
action_51 (55) = happyShift action_27
action_51 (5) = happyGoto action_75
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (6) = happyShift action_3
action_52 (7) = happyShift action_4
action_52 (8) = happyShift action_5
action_52 (9) = happyShift action_6
action_52 (10) = happyShift action_7
action_52 (11) = happyShift action_8
action_52 (13) = happyShift action_9
action_52 (15) = happyShift action_10
action_52 (16) = happyShift action_11
action_52 (18) = happyShift action_12
action_52 (27) = happyShift action_13
action_52 (28) = happyShift action_14
action_52 (30) = happyShift action_15
action_52 (31) = happyShift action_16
action_52 (32) = happyShift action_17
action_52 (33) = happyShift action_18
action_52 (34) = happyShift action_19
action_52 (38) = happyShift action_20
action_52 (44) = happyShift action_21
action_52 (45) = happyShift action_22
action_52 (46) = happyShift action_23
action_52 (48) = happyShift action_24
action_52 (51) = happyShift action_25
action_52 (53) = happyShift action_26
action_52 (55) = happyShift action_27
action_52 (5) = happyGoto action_74
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (6) = happyShift action_3
action_53 (7) = happyShift action_4
action_53 (8) = happyShift action_5
action_53 (9) = happyShift action_6
action_53 (10) = happyShift action_7
action_53 (11) = happyShift action_8
action_53 (13) = happyShift action_9
action_53 (15) = happyShift action_10
action_53 (16) = happyShift action_11
action_53 (18) = happyShift action_12
action_53 (27) = happyShift action_13
action_53 (28) = happyShift action_14
action_53 (30) = happyShift action_15
action_53 (31) = happyShift action_16
action_53 (32) = happyShift action_17
action_53 (33) = happyShift action_18
action_53 (34) = happyShift action_19
action_53 (38) = happyShift action_20
action_53 (44) = happyShift action_21
action_53 (45) = happyShift action_22
action_53 (46) = happyShift action_23
action_53 (48) = happyShift action_24
action_53 (51) = happyShift action_25
action_53 (53) = happyShift action_26
action_53 (55) = happyShift action_27
action_53 (5) = happyGoto action_73
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (6) = happyShift action_3
action_54 (7) = happyShift action_4
action_54 (8) = happyShift action_5
action_54 (9) = happyShift action_6
action_54 (10) = happyShift action_7
action_54 (11) = happyShift action_8
action_54 (13) = happyShift action_9
action_54 (15) = happyShift action_10
action_54 (16) = happyShift action_11
action_54 (18) = happyShift action_12
action_54 (27) = happyShift action_13
action_54 (28) = happyShift action_14
action_54 (30) = happyShift action_15
action_54 (31) = happyShift action_16
action_54 (32) = happyShift action_17
action_54 (33) = happyShift action_18
action_54 (34) = happyShift action_19
action_54 (38) = happyShift action_20
action_54 (44) = happyShift action_21
action_54 (45) = happyShift action_22
action_54 (46) = happyShift action_23
action_54 (48) = happyShift action_24
action_54 (51) = happyShift action_25
action_54 (53) = happyShift action_26
action_54 (55) = happyShift action_27
action_54 (5) = happyGoto action_72
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (6) = happyShift action_3
action_55 (7) = happyShift action_4
action_55 (8) = happyShift action_5
action_55 (9) = happyShift action_6
action_55 (10) = happyShift action_7
action_55 (11) = happyShift action_8
action_55 (13) = happyShift action_9
action_55 (15) = happyShift action_10
action_55 (16) = happyShift action_11
action_55 (18) = happyShift action_12
action_55 (27) = happyShift action_13
action_55 (28) = happyShift action_14
action_55 (30) = happyShift action_15
action_55 (31) = happyShift action_16
action_55 (32) = happyShift action_17
action_55 (33) = happyShift action_18
action_55 (34) = happyShift action_19
action_55 (38) = happyShift action_20
action_55 (44) = happyShift action_21
action_55 (45) = happyShift action_22
action_55 (46) = happyShift action_23
action_55 (48) = happyShift action_24
action_55 (51) = happyShift action_25
action_55 (53) = happyShift action_26
action_55 (55) = happyShift action_27
action_55 (5) = happyGoto action_71
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (6) = happyShift action_3
action_56 (7) = happyShift action_4
action_56 (8) = happyShift action_5
action_56 (9) = happyShift action_6
action_56 (10) = happyShift action_7
action_56 (11) = happyShift action_8
action_56 (13) = happyShift action_9
action_56 (15) = happyShift action_10
action_56 (16) = happyShift action_11
action_56 (18) = happyShift action_12
action_56 (27) = happyShift action_13
action_56 (28) = happyShift action_14
action_56 (30) = happyShift action_15
action_56 (31) = happyShift action_16
action_56 (32) = happyShift action_17
action_56 (33) = happyShift action_18
action_56 (34) = happyShift action_19
action_56 (38) = happyShift action_20
action_56 (44) = happyShift action_21
action_56 (45) = happyShift action_22
action_56 (46) = happyShift action_23
action_56 (48) = happyShift action_24
action_56 (51) = happyShift action_25
action_56 (53) = happyShift action_26
action_56 (55) = happyShift action_27
action_56 (5) = happyGoto action_70
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (6) = happyShift action_3
action_57 (7) = happyShift action_4
action_57 (8) = happyShift action_5
action_57 (9) = happyShift action_6
action_57 (10) = happyShift action_7
action_57 (11) = happyShift action_8
action_57 (13) = happyShift action_9
action_57 (15) = happyShift action_10
action_57 (16) = happyShift action_11
action_57 (18) = happyShift action_12
action_57 (27) = happyShift action_13
action_57 (28) = happyShift action_14
action_57 (30) = happyShift action_15
action_57 (31) = happyShift action_16
action_57 (32) = happyShift action_17
action_57 (33) = happyShift action_18
action_57 (34) = happyShift action_19
action_57 (38) = happyShift action_20
action_57 (44) = happyShift action_21
action_57 (45) = happyShift action_22
action_57 (46) = happyShift action_23
action_57 (48) = happyShift action_24
action_57 (51) = happyShift action_25
action_57 (53) = happyShift action_26
action_57 (55) = happyShift action_27
action_57 (5) = happyGoto action_69
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (6) = happyShift action_3
action_58 (7) = happyShift action_4
action_58 (8) = happyShift action_5
action_58 (9) = happyShift action_6
action_58 (10) = happyShift action_7
action_58 (11) = happyShift action_8
action_58 (13) = happyShift action_9
action_58 (15) = happyShift action_10
action_58 (16) = happyShift action_11
action_58 (18) = happyShift action_12
action_58 (27) = happyShift action_13
action_58 (28) = happyShift action_14
action_58 (30) = happyShift action_15
action_58 (31) = happyShift action_16
action_58 (32) = happyShift action_17
action_58 (33) = happyShift action_18
action_58 (34) = happyShift action_19
action_58 (38) = happyShift action_20
action_58 (44) = happyShift action_21
action_58 (45) = happyShift action_22
action_58 (46) = happyShift action_23
action_58 (48) = happyShift action_24
action_58 (51) = happyShift action_25
action_58 (53) = happyShift action_26
action_58 (55) = happyShift action_27
action_58 (5) = happyGoto action_68
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (6) = happyShift action_3
action_59 (7) = happyShift action_4
action_59 (8) = happyShift action_5
action_59 (9) = happyShift action_6
action_59 (10) = happyShift action_7
action_59 (11) = happyShift action_8
action_59 (13) = happyShift action_9
action_59 (15) = happyShift action_10
action_59 (16) = happyShift action_11
action_59 (18) = happyShift action_12
action_59 (27) = happyShift action_13
action_59 (28) = happyShift action_14
action_59 (30) = happyShift action_15
action_59 (31) = happyShift action_16
action_59 (32) = happyShift action_17
action_59 (33) = happyShift action_18
action_59 (34) = happyShift action_19
action_59 (38) = happyShift action_20
action_59 (44) = happyShift action_21
action_59 (45) = happyShift action_22
action_59 (46) = happyShift action_23
action_59 (48) = happyShift action_24
action_59 (51) = happyShift action_25
action_59 (53) = happyShift action_26
action_59 (55) = happyShift action_27
action_59 (5) = happyGoto action_67
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (6) = happyShift action_3
action_60 (7) = happyShift action_4
action_60 (8) = happyShift action_5
action_60 (9) = happyShift action_6
action_60 (10) = happyShift action_7
action_60 (11) = happyShift action_8
action_60 (13) = happyShift action_9
action_60 (15) = happyShift action_10
action_60 (16) = happyShift action_11
action_60 (18) = happyShift action_12
action_60 (27) = happyShift action_13
action_60 (28) = happyShift action_14
action_60 (30) = happyShift action_15
action_60 (31) = happyShift action_16
action_60 (32) = happyShift action_17
action_60 (33) = happyShift action_18
action_60 (34) = happyShift action_19
action_60 (38) = happyShift action_20
action_60 (44) = happyShift action_21
action_60 (45) = happyShift action_22
action_60 (46) = happyShift action_23
action_60 (48) = happyShift action_24
action_60 (51) = happyShift action_25
action_60 (53) = happyShift action_26
action_60 (55) = happyShift action_27
action_60 (5) = happyGoto action_66
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_1

action_62 (6) = happyShift action_3
action_62 (7) = happyShift action_4
action_62 (8) = happyShift action_5
action_62 (9) = happyShift action_6
action_62 (10) = happyShift action_7
action_62 (11) = happyShift action_8
action_62 (13) = happyShift action_9
action_62 (15) = happyShift action_10
action_62 (16) = happyShift action_11
action_62 (18) = happyShift action_12
action_62 (27) = happyShift action_13
action_62 (28) = happyShift action_14
action_62 (30) = happyShift action_15
action_62 (31) = happyShift action_16
action_62 (32) = happyShift action_17
action_62 (33) = happyShift action_18
action_62 (34) = happyShift action_19
action_62 (38) = happyShift action_20
action_62 (44) = happyShift action_21
action_62 (45) = happyShift action_22
action_62 (46) = happyShift action_23
action_62 (48) = happyShift action_24
action_62 (51) = happyShift action_25
action_62 (53) = happyShift action_26
action_62 (55) = happyShift action_27
action_62 (5) = happyGoto action_65
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (6) = happyShift action_3
action_63 (7) = happyShift action_4
action_63 (8) = happyShift action_5
action_63 (9) = happyShift action_6
action_63 (10) = happyShift action_7
action_63 (11) = happyShift action_8
action_63 (13) = happyShift action_9
action_63 (15) = happyShift action_10
action_63 (16) = happyShift action_11
action_63 (18) = happyShift action_12
action_63 (27) = happyShift action_13
action_63 (28) = happyShift action_14
action_63 (30) = happyShift action_15
action_63 (31) = happyShift action_16
action_63 (32) = happyShift action_17
action_63 (33) = happyShift action_18
action_63 (34) = happyShift action_19
action_63 (38) = happyShift action_20
action_63 (44) = happyShift action_21
action_63 (45) = happyShift action_22
action_63 (46) = happyShift action_23
action_63 (48) = happyShift action_24
action_63 (51) = happyShift action_25
action_63 (53) = happyShift action_26
action_63 (55) = happyShift action_27
action_63 (5) = happyGoto action_64
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (12) = happyShift action_47
action_64 (13) = happyShift action_48
action_64 (14) = happyShift action_49
action_64 (15) = happyShift action_50
action_64 (16) = happyShift action_51
action_64 (20) = happyShift action_52
action_64 (22) = happyShift action_54
action_64 (52) = happyShift action_62
action_64 _ = happyReduce_44

action_65 (12) = happyShift action_47
action_65 (13) = happyShift action_48
action_65 (14) = happyShift action_49
action_65 (15) = happyShift action_50
action_65 (16) = happyShift action_51
action_65 (20) = happyShift action_52
action_65 (22) = happyShift action_54
action_65 _ = happyReduce_42

action_66 (12) = happyShift action_47
action_66 (13) = happyShift action_48
action_66 (14) = happyShift action_49
action_66 (15) = happyShift action_50
action_66 (16) = happyShift action_51
action_66 (20) = happyShift action_52
action_66 (21) = happyShift action_53
action_66 (22) = happyShift action_54
action_66 (23) = happyShift action_55
action_66 (24) = happyShift action_56
action_66 (25) = happyShift action_57
action_66 (26) = happyShift action_58
action_66 (40) = happyShift action_59
action_66 (41) = happyShift action_60
action_66 (52) = happyShift action_62
action_66 (56) = happyShift action_63
action_66 _ = happyReduce_28

action_67 (12) = happyShift action_47
action_67 (13) = happyShift action_48
action_67 (14) = happyShift action_49
action_67 (15) = happyShift action_50
action_67 (16) = happyShift action_51
action_67 (20) = happyShift action_52
action_67 (21) = happyShift action_53
action_67 (22) = happyShift action_54
action_67 (23) = happyShift action_55
action_67 (24) = happyShift action_56
action_67 (25) = happyShift action_57
action_67 (26) = happyShift action_58
action_67 (40) = happyShift action_59
action_67 (52) = happyShift action_62
action_67 (56) = happyShift action_63
action_67 _ = happyReduce_27

action_68 (12) = happyShift action_47
action_68 (13) = happyShift action_48
action_68 (14) = happyShift action_49
action_68 (15) = happyShift action_50
action_68 (16) = happyShift action_51
action_68 (20) = happyShift action_52
action_68 (21) = happyFail []
action_68 (22) = happyShift action_54
action_68 (23) = happyFail []
action_68 (24) = happyFail []
action_68 (25) = happyFail []
action_68 (26) = happyFail []
action_68 (52) = happyShift action_62
action_68 (56) = happyShift action_63
action_68 _ = happyReduce_30

action_69 (12) = happyShift action_47
action_69 (13) = happyShift action_48
action_69 (14) = happyShift action_49
action_69 (15) = happyShift action_50
action_69 (16) = happyShift action_51
action_69 (20) = happyShift action_52
action_69 (21) = happyFail []
action_69 (22) = happyShift action_54
action_69 (23) = happyFail []
action_69 (24) = happyFail []
action_69 (25) = happyFail []
action_69 (26) = happyFail []
action_69 (52) = happyShift action_62
action_69 (56) = happyShift action_63
action_69 _ = happyReduce_29

action_70 (12) = happyShift action_47
action_70 (13) = happyShift action_48
action_70 (14) = happyShift action_49
action_70 (15) = happyShift action_50
action_70 (16) = happyShift action_51
action_70 (20) = happyShift action_52
action_70 (21) = happyFail []
action_70 (22) = happyShift action_54
action_70 (23) = happyFail []
action_70 (24) = happyFail []
action_70 (25) = happyFail []
action_70 (26) = happyFail []
action_70 (52) = happyShift action_62
action_70 (56) = happyShift action_63
action_70 _ = happyReduce_26

action_71 (12) = happyShift action_47
action_71 (13) = happyShift action_48
action_71 (14) = happyShift action_49
action_71 (15) = happyShift action_50
action_71 (16) = happyShift action_51
action_71 (20) = happyShift action_52
action_71 (21) = happyFail []
action_71 (22) = happyShift action_54
action_71 (23) = happyFail []
action_71 (24) = happyFail []
action_71 (25) = happyFail []
action_71 (26) = happyFail []
action_71 (52) = happyShift action_62
action_71 (56) = happyShift action_63
action_71 _ = happyReduce_25

action_72 (16) = happyShift action_51
action_72 (22) = happyShift action_54
action_72 _ = happyReduce_22

action_73 (12) = happyShift action_47
action_73 (13) = happyShift action_48
action_73 (14) = happyShift action_49
action_73 (15) = happyShift action_50
action_73 (16) = happyShift action_51
action_73 (20) = happyShift action_52
action_73 (21) = happyFail []
action_73 (22) = happyShift action_54
action_73 (23) = happyFail []
action_73 (24) = happyFail []
action_73 (25) = happyFail []
action_73 (26) = happyFail []
action_73 (52) = happyShift action_62
action_73 (56) = happyShift action_63
action_73 _ = happyReduce_24

action_74 (16) = happyShift action_51
action_74 (22) = happyShift action_54
action_74 _ = happyReduce_23

action_75 (12) = happyShift action_47
action_75 (13) = happyShift action_48
action_75 (14) = happyShift action_49
action_75 (15) = happyShift action_50
action_75 (16) = happyShift action_51
action_75 (17) = happyShift action_103
action_75 (20) = happyShift action_52
action_75 (21) = happyShift action_53
action_75 (22) = happyShift action_54
action_75 (23) = happyShift action_55
action_75 (24) = happyShift action_56
action_75 (25) = happyShift action_57
action_75 (26) = happyShift action_58
action_75 (40) = happyShift action_59
action_75 (41) = happyShift action_60
action_75 (52) = happyShift action_62
action_75 (56) = happyShift action_63
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (16) = happyShift action_51
action_76 (20) = happyShift action_52
action_76 (22) = happyShift action_54
action_76 _ = happyReduce_21

action_77 (16) = happyShift action_51
action_77 (20) = happyShift action_52
action_77 (22) = happyShift action_54
action_77 _ = happyReduce_20

action_78 (14) = happyShift action_49
action_78 (15) = happyShift action_50
action_78 (16) = happyShift action_51
action_78 (20) = happyShift action_52
action_78 (22) = happyShift action_54
action_78 _ = happyReduce_19

action_79 (14) = happyShift action_49
action_79 (15) = happyShift action_50
action_79 (16) = happyShift action_51
action_79 (20) = happyShift action_52
action_79 (22) = happyShift action_54
action_79 _ = happyReduce_18

action_80 (6) = happyShift action_3
action_80 (7) = happyShift action_4
action_80 (8) = happyShift action_5
action_80 (9) = happyShift action_6
action_80 (10) = happyShift action_7
action_80 (11) = happyShift action_8
action_80 (13) = happyShift action_9
action_80 (15) = happyShift action_10
action_80 (16) = happyShift action_11
action_80 (18) = happyShift action_12
action_80 (27) = happyShift action_13
action_80 (28) = happyShift action_14
action_80 (30) = happyShift action_15
action_80 (31) = happyShift action_16
action_80 (32) = happyShift action_17
action_80 (33) = happyShift action_18
action_80 (34) = happyShift action_19
action_80 (38) = happyShift action_20
action_80 (44) = happyShift action_21
action_80 (45) = happyShift action_22
action_80 (46) = happyShift action_23
action_80 (48) = happyShift action_24
action_80 (51) = happyShift action_25
action_80 (53) = happyShift action_26
action_80 (55) = happyShift action_27
action_80 (5) = happyGoto action_102
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_14

action_82 _ = happyReduce_15

action_83 (6) = happyShift action_3
action_83 (7) = happyShift action_4
action_83 (8) = happyShift action_5
action_83 (9) = happyShift action_6
action_83 (10) = happyShift action_7
action_83 (11) = happyShift action_8
action_83 (13) = happyShift action_9
action_83 (15) = happyShift action_10
action_83 (16) = happyShift action_11
action_83 (18) = happyShift action_12
action_83 (27) = happyShift action_13
action_83 (28) = happyShift action_14
action_83 (30) = happyShift action_15
action_83 (31) = happyShift action_16
action_83 (32) = happyShift action_17
action_83 (33) = happyShift action_18
action_83 (34) = happyShift action_19
action_83 (38) = happyShift action_20
action_83 (44) = happyShift action_21
action_83 (45) = happyShift action_22
action_83 (46) = happyShift action_23
action_83 (48) = happyShift action_24
action_83 (51) = happyShift action_25
action_83 (53) = happyShift action_26
action_83 (55) = happyShift action_27
action_83 (5) = happyGoto action_101
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (6) = happyShift action_3
action_84 (7) = happyShift action_4
action_84 (8) = happyShift action_5
action_84 (9) = happyShift action_6
action_84 (10) = happyShift action_7
action_84 (11) = happyShift action_8
action_84 (13) = happyShift action_9
action_84 (15) = happyShift action_10
action_84 (16) = happyShift action_11
action_84 (18) = happyShift action_12
action_84 (27) = happyShift action_13
action_84 (28) = happyShift action_14
action_84 (30) = happyShift action_15
action_84 (31) = happyShift action_16
action_84 (32) = happyShift action_17
action_84 (33) = happyShift action_18
action_84 (34) = happyShift action_19
action_84 (38) = happyShift action_20
action_84 (44) = happyShift action_21
action_84 (45) = happyShift action_22
action_84 (46) = happyShift action_23
action_84 (48) = happyShift action_24
action_84 (51) = happyShift action_25
action_84 (53) = happyShift action_26
action_84 (55) = happyShift action_27
action_84 (5) = happyGoto action_100
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (6) = happyShift action_3
action_85 (7) = happyShift action_4
action_85 (8) = happyShift action_5
action_85 (9) = happyShift action_6
action_85 (10) = happyShift action_7
action_85 (11) = happyShift action_8
action_85 (13) = happyShift action_9
action_85 (15) = happyShift action_10
action_85 (16) = happyShift action_11
action_85 (18) = happyShift action_12
action_85 (27) = happyShift action_13
action_85 (28) = happyShift action_14
action_85 (30) = happyShift action_15
action_85 (31) = happyShift action_16
action_85 (32) = happyShift action_17
action_85 (33) = happyShift action_18
action_85 (34) = happyShift action_19
action_85 (38) = happyShift action_20
action_85 (44) = happyShift action_21
action_85 (45) = happyShift action_22
action_85 (46) = happyShift action_23
action_85 (48) = happyShift action_24
action_85 (51) = happyShift action_25
action_85 (53) = happyShift action_26
action_85 (55) = happyShift action_27
action_85 (5) = happyGoto action_99
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (6) = happyShift action_3
action_86 (7) = happyShift action_4
action_86 (8) = happyShift action_5
action_86 (9) = happyShift action_6
action_86 (10) = happyShift action_7
action_86 (11) = happyShift action_8
action_86 (13) = happyShift action_9
action_86 (15) = happyShift action_10
action_86 (16) = happyShift action_11
action_86 (18) = happyShift action_12
action_86 (27) = happyShift action_13
action_86 (28) = happyShift action_14
action_86 (30) = happyShift action_15
action_86 (31) = happyShift action_16
action_86 (32) = happyShift action_17
action_86 (33) = happyShift action_18
action_86 (34) = happyShift action_19
action_86 (38) = happyShift action_20
action_86 (44) = happyShift action_21
action_86 (45) = happyShift action_22
action_86 (46) = happyShift action_23
action_86 (48) = happyShift action_24
action_86 (51) = happyShift action_25
action_86 (53) = happyShift action_26
action_86 (55) = happyShift action_27
action_86 (5) = happyGoto action_98
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (12) = happyShift action_47
action_87 (13) = happyShift action_48
action_87 (14) = happyShift action_49
action_87 (15) = happyShift action_50
action_87 (16) = happyShift action_51
action_87 (17) = happyShift action_97
action_87 (20) = happyShift action_52
action_87 (21) = happyShift action_53
action_87 (22) = happyShift action_54
action_87 (23) = happyShift action_55
action_87 (24) = happyShift action_56
action_87 (25) = happyShift action_57
action_87 (26) = happyShift action_58
action_87 (40) = happyShift action_59
action_87 (41) = happyShift action_60
action_87 (52) = happyShift action_62
action_87 (56) = happyShift action_63
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (12) = happyShift action_47
action_88 (13) = happyShift action_48
action_88 (14) = happyShift action_49
action_88 (15) = happyShift action_50
action_88 (16) = happyShift action_51
action_88 (17) = happyShift action_96
action_88 (20) = happyShift action_52
action_88 (21) = happyShift action_53
action_88 (22) = happyShift action_54
action_88 (23) = happyShift action_55
action_88 (24) = happyShift action_56
action_88 (25) = happyShift action_57
action_88 (26) = happyShift action_58
action_88 (40) = happyShift action_59
action_88 (41) = happyShift action_60
action_88 (52) = happyShift action_62
action_88 (56) = happyShift action_63
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (6) = happyShift action_3
action_89 (7) = happyShift action_4
action_89 (8) = happyShift action_5
action_89 (9) = happyShift action_6
action_89 (10) = happyShift action_7
action_89 (11) = happyShift action_8
action_89 (13) = happyShift action_9
action_89 (15) = happyShift action_10
action_89 (16) = happyShift action_11
action_89 (18) = happyShift action_12
action_89 (27) = happyShift action_13
action_89 (28) = happyShift action_14
action_89 (30) = happyShift action_15
action_89 (31) = happyShift action_16
action_89 (32) = happyShift action_17
action_89 (33) = happyShift action_18
action_89 (34) = happyShift action_19
action_89 (38) = happyShift action_20
action_89 (44) = happyShift action_21
action_89 (45) = happyShift action_22
action_89 (46) = happyShift action_23
action_89 (48) = happyShift action_24
action_89 (51) = happyShift action_25
action_89 (53) = happyShift action_26
action_89 (55) = happyShift action_27
action_89 (5) = happyGoto action_95
action_89 _ = happyFail (happyExpListPerState 89)

action_90 _ = happyReduce_43

action_91 (6) = happyShift action_3
action_91 (7) = happyShift action_4
action_91 (8) = happyShift action_5
action_91 (9) = happyShift action_6
action_91 (10) = happyShift action_7
action_91 (11) = happyShift action_8
action_91 (13) = happyShift action_9
action_91 (15) = happyShift action_10
action_91 (16) = happyShift action_11
action_91 (18) = happyShift action_12
action_91 (27) = happyShift action_13
action_91 (28) = happyShift action_14
action_91 (30) = happyShift action_15
action_91 (31) = happyShift action_16
action_91 (32) = happyShift action_17
action_91 (33) = happyShift action_18
action_91 (34) = happyShift action_19
action_91 (38) = happyShift action_20
action_91 (44) = happyShift action_21
action_91 (45) = happyShift action_22
action_91 (46) = happyShift action_23
action_91 (48) = happyShift action_24
action_91 (51) = happyShift action_25
action_91 (53) = happyShift action_26
action_91 (55) = happyShift action_27
action_91 (5) = happyGoto action_94
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (6) = happyShift action_3
action_92 (7) = happyShift action_4
action_92 (8) = happyShift action_5
action_92 (9) = happyShift action_6
action_92 (10) = happyShift action_7
action_92 (11) = happyShift action_8
action_92 (13) = happyShift action_9
action_92 (15) = happyShift action_10
action_92 (16) = happyShift action_11
action_92 (18) = happyShift action_12
action_92 (27) = happyShift action_13
action_92 (28) = happyShift action_14
action_92 (30) = happyShift action_15
action_92 (31) = happyShift action_16
action_92 (32) = happyShift action_17
action_92 (33) = happyShift action_18
action_92 (34) = happyShift action_19
action_92 (38) = happyShift action_20
action_92 (44) = happyShift action_21
action_92 (45) = happyShift action_22
action_92 (46) = happyShift action_23
action_92 (48) = happyShift action_24
action_92 (51) = happyShift action_25
action_92 (53) = happyShift action_26
action_92 (55) = happyShift action_27
action_92 (5) = happyGoto action_93
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (12) = happyShift action_47
action_93 (13) = happyShift action_48
action_93 (14) = happyShift action_49
action_93 (15) = happyShift action_50
action_93 (16) = happyShift action_51
action_93 (20) = happyShift action_52
action_93 (21) = happyShift action_53
action_93 (22) = happyShift action_54
action_93 (23) = happyShift action_55
action_93 (24) = happyShift action_56
action_93 (25) = happyShift action_57
action_93 (26) = happyShift action_58
action_93 (40) = happyShift action_59
action_93 (41) = happyShift action_60
action_93 (42) = happyShift action_109
action_93 (52) = happyShift action_62
action_93 (56) = happyShift action_63
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (12) = happyShift action_47
action_94 (13) = happyShift action_48
action_94 (14) = happyShift action_49
action_94 (15) = happyShift action_50
action_94 (16) = happyShift action_51
action_94 (20) = happyShift action_52
action_94 (21) = happyShift action_53
action_94 (22) = happyShift action_54
action_94 (23) = happyShift action_55
action_94 (24) = happyShift action_56
action_94 (25) = happyShift action_57
action_94 (26) = happyShift action_58
action_94 (40) = happyShift action_59
action_94 (41) = happyShift action_60
action_94 (42) = happyShift action_108
action_94 (52) = happyShift action_62
action_94 (56) = happyShift action_63
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (12) = happyShift action_47
action_95 (13) = happyShift action_48
action_95 (14) = happyShift action_49
action_95 (15) = happyShift action_50
action_95 (16) = happyShift action_51
action_95 (20) = happyShift action_52
action_95 (21) = happyShift action_53
action_95 (22) = happyShift action_54
action_95 (23) = happyShift action_55
action_95 (24) = happyShift action_56
action_95 (25) = happyShift action_57
action_95 (26) = happyShift action_58
action_95 (40) = happyShift action_59
action_95 (41) = happyShift action_60
action_95 (52) = happyShift action_62
action_95 (56) = happyShift action_63
action_95 _ = happyReduce_40

action_96 _ = happyReduce_35

action_97 _ = happyReduce_34

action_98 (12) = happyShift action_47
action_98 (13) = happyShift action_48
action_98 (14) = happyShift action_49
action_98 (15) = happyShift action_50
action_98 (16) = happyShift action_51
action_98 (20) = happyShift action_52
action_98 (21) = happyShift action_53
action_98 (22) = happyShift action_54
action_98 (23) = happyShift action_55
action_98 (24) = happyShift action_56
action_98 (25) = happyShift action_57
action_98 (26) = happyShift action_58
action_98 (40) = happyShift action_59
action_98 (41) = happyShift action_60
action_98 (52) = happyShift action_62
action_98 (56) = happyShift action_63
action_98 _ = happyReduce_38

action_99 (12) = happyShift action_47
action_99 (13) = happyShift action_48
action_99 (14) = happyShift action_49
action_99 (15) = happyShift action_50
action_99 (16) = happyShift action_51
action_99 (20) = happyShift action_52
action_99 (21) = happyShift action_53
action_99 (22) = happyShift action_54
action_99 (23) = happyShift action_55
action_99 (24) = happyShift action_56
action_99 (25) = happyShift action_57
action_99 (26) = happyShift action_58
action_99 (29) = happyShift action_107
action_99 (40) = happyShift action_59
action_99 (41) = happyShift action_60
action_99 (52) = happyShift action_62
action_99 (56) = happyShift action_63
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (12) = happyShift action_47
action_100 (13) = happyShift action_48
action_100 (14) = happyShift action_49
action_100 (15) = happyShift action_50
action_100 (16) = happyShift action_51
action_100 (20) = happyShift action_52
action_100 (21) = happyShift action_53
action_100 (22) = happyShift action_54
action_100 (23) = happyShift action_55
action_100 (24) = happyShift action_56
action_100 (25) = happyShift action_57
action_100 (26) = happyShift action_58
action_100 (36) = happyShift action_106
action_100 (40) = happyShift action_59
action_100 (41) = happyShift action_60
action_100 (52) = happyShift action_62
action_100 (56) = happyShift action_63
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (12) = happyShift action_47
action_101 (13) = happyShift action_48
action_101 (14) = happyShift action_49
action_101 (15) = happyShift action_50
action_101 (16) = happyShift action_51
action_101 (20) = happyShift action_52
action_101 (21) = happyShift action_53
action_101 (22) = happyShift action_54
action_101 (23) = happyShift action_55
action_101 (24) = happyShift action_56
action_101 (25) = happyShift action_57
action_101 (26) = happyShift action_58
action_101 (36) = happyShift action_105
action_101 (40) = happyShift action_59
action_101 (41) = happyShift action_60
action_101 (52) = happyShift action_62
action_101 (56) = happyShift action_63
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (12) = happyShift action_47
action_102 (13) = happyShift action_48
action_102 (14) = happyShift action_49
action_102 (15) = happyShift action_50
action_102 (16) = happyShift action_51
action_102 (20) = happyShift action_52
action_102 (21) = happyShift action_53
action_102 (22) = happyShift action_54
action_102 (23) = happyShift action_55
action_102 (24) = happyShift action_56
action_102 (25) = happyShift action_57
action_102 (26) = happyShift action_58
action_102 (40) = happyShift action_59
action_102 (41) = happyShift action_60
action_102 (50) = happyShift action_104
action_102 (52) = happyShift action_62
action_102 (56) = happyShift action_63
action_102 _ = happyFail (happyExpListPerState 102)

action_103 _ = happyReduce_39

action_104 _ = happyReduce_36

action_105 (6) = happyShift action_3
action_105 (7) = happyShift action_4
action_105 (8) = happyShift action_5
action_105 (9) = happyShift action_6
action_105 (10) = happyShift action_7
action_105 (11) = happyShift action_8
action_105 (13) = happyShift action_9
action_105 (15) = happyShift action_10
action_105 (16) = happyShift action_11
action_105 (18) = happyShift action_12
action_105 (27) = happyShift action_13
action_105 (28) = happyShift action_14
action_105 (30) = happyShift action_15
action_105 (31) = happyShift action_16
action_105 (32) = happyShift action_17
action_105 (33) = happyShift action_18
action_105 (34) = happyShift action_19
action_105 (38) = happyShift action_20
action_105 (44) = happyShift action_21
action_105 (45) = happyShift action_22
action_105 (46) = happyShift action_23
action_105 (48) = happyShift action_24
action_105 (51) = happyShift action_25
action_105 (53) = happyShift action_26
action_105 (55) = happyShift action_27
action_105 (5) = happyGoto action_112
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (6) = happyShift action_3
action_106 (7) = happyShift action_4
action_106 (8) = happyShift action_5
action_106 (9) = happyShift action_6
action_106 (10) = happyShift action_7
action_106 (11) = happyShift action_8
action_106 (13) = happyShift action_9
action_106 (15) = happyShift action_10
action_106 (16) = happyShift action_11
action_106 (18) = happyShift action_12
action_106 (27) = happyShift action_13
action_106 (28) = happyShift action_14
action_106 (30) = happyShift action_15
action_106 (31) = happyShift action_16
action_106 (32) = happyShift action_17
action_106 (33) = happyShift action_18
action_106 (34) = happyShift action_19
action_106 (38) = happyShift action_20
action_106 (44) = happyShift action_21
action_106 (45) = happyShift action_22
action_106 (46) = happyShift action_23
action_106 (48) = happyShift action_24
action_106 (51) = happyShift action_25
action_106 (53) = happyShift action_26
action_106 (55) = happyShift action_27
action_106 (5) = happyGoto action_111
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (6) = happyShift action_3
action_107 (7) = happyShift action_4
action_107 (8) = happyShift action_5
action_107 (9) = happyShift action_6
action_107 (10) = happyShift action_7
action_107 (11) = happyShift action_8
action_107 (13) = happyShift action_9
action_107 (15) = happyShift action_10
action_107 (16) = happyShift action_11
action_107 (18) = happyShift action_12
action_107 (27) = happyShift action_13
action_107 (28) = happyShift action_14
action_107 (30) = happyShift action_15
action_107 (31) = happyShift action_16
action_107 (32) = happyShift action_17
action_107 (33) = happyShift action_18
action_107 (34) = happyShift action_19
action_107 (38) = happyShift action_20
action_107 (44) = happyShift action_21
action_107 (45) = happyShift action_22
action_107 (46) = happyShift action_23
action_107 (48) = happyShift action_24
action_107 (51) = happyShift action_25
action_107 (53) = happyShift action_26
action_107 (55) = happyShift action_27
action_107 (5) = happyGoto action_110
action_107 _ = happyFail (happyExpListPerState 107)

action_108 _ = happyReduce_2

action_109 _ = happyReduce_3

action_110 (12) = happyShift action_47
action_110 (13) = happyShift action_48
action_110 (14) = happyShift action_49
action_110 (15) = happyShift action_50
action_110 (16) = happyShift action_51
action_110 (20) = happyShift action_52
action_110 (21) = happyShift action_53
action_110 (22) = happyShift action_54
action_110 (23) = happyShift action_55
action_110 (24) = happyShift action_56
action_110 (25) = happyShift action_57
action_110 (26) = happyShift action_58
action_110 (40) = happyShift action_59
action_110 (41) = happyShift action_60
action_110 (52) = happyShift action_62
action_110 (56) = happyShift action_63
action_110 _ = happyReduce_33

action_111 (12) = happyShift action_47
action_111 (13) = happyShift action_48
action_111 (14) = happyShift action_49
action_111 (15) = happyShift action_50
action_111 (16) = happyShift action_51
action_111 (20) = happyShift action_52
action_111 (21) = happyShift action_53
action_111 (22) = happyShift action_54
action_111 (23) = happyShift action_55
action_111 (24) = happyShift action_56
action_111 (25) = happyShift action_57
action_111 (26) = happyShift action_58
action_111 (40) = happyShift action_59
action_111 (41) = happyShift action_60
action_111 (52) = happyShift action_62
action_111 (56) = happyShift action_63
action_111 _ = happyReduce_31

action_112 (12) = happyShift action_47
action_112 (13) = happyShift action_48
action_112 (14) = happyShift action_49
action_112 (15) = happyShift action_50
action_112 (16) = happyShift action_51
action_112 (20) = happyShift action_52
action_112 (21) = happyShift action_53
action_112 (22) = happyShift action_54
action_112 (23) = happyShift action_55
action_112 (24) = happyShift action_56
action_112 (25) = happyShift action_57
action_112 (26) = happyShift action_58
action_112 (40) = happyShift action_59
action_112 (41) = happyShift action_60
action_112 (52) = happyShift action_62
action_112 (56) = happyShift action_63
action_112 _ = happyReduce_32

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 _
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (ExprDec happy_var_1
	)
happyReduction_1 _ _  = notHappyAtAll 

happyReduce_2 = happyReduce 5 4 happyReduction_2
happyReduction_2 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VarTok happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (HearyeDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_3 = happyReduce 5 4 happyReduction_3
happyReduction_3 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VarTok happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (ColonizeDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_4 = happySpecReduce_1  5 happyReduction_4
happyReduction_4 (HappyTerminal (IntTok happy_var_1))
	 =  HappyAbsSyn5
		 (IntExpr happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 (HappyTerminal (RealTok happy_var_1))
	 =  HappyAbsSyn5
		 (RealExpr happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  5 happyReduction_6
happyReduction_6 _
	 =  HappyAbsSyn5
		 (FeeExpr
	)

happyReduce_7 = happySpecReduce_1  5 happyReduction_7
happyReduction_7 _
	 =  HappyAbsSyn5
		 (PhiExpr
	)

happyReduce_8 = happySpecReduce_1  5 happyReduction_8
happyReduction_8 _
	 =  HappyAbsSyn5
		 (PieExpr
	)

happyReduce_9 = happySpecReduce_1  5 happyReduction_9
happyReduction_9 _
	 =  HappyAbsSyn5
		 (MoleExpr
	)

happyReduce_10 = happySpecReduce_1  5 happyReduction_10
happyReduction_10 _
	 =  HappyAbsSyn5
		 (BoolExpr True
	)

happyReduce_11 = happySpecReduce_1  5 happyReduction_11
happyReduction_11 _
	 =  HappyAbsSyn5
		 (BoolExpr False
	)

happyReduce_12 = happySpecReduce_1  5 happyReduction_12
happyReduction_12 (HappyTerminal (StringTok happy_var_1))
	 =  HappyAbsSyn5
		 (StringExpr happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  5 happyReduction_13
happyReduction_13 (HappyTerminal (VarTok happy_var_1))
	 =  HappyAbsSyn5
		 (VarExpr happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  5 happyReduction_14
happyReduction_14 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  5 happyReduction_15
happyReduction_15 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (NotExpr happy_var_2
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  5 happyReduction_16
happyReduction_16 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (SqrtExpr happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  5 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (NegExpr happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  5 happyReduction_18
happyReduction_18 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BOpExpr PlusOp happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  5 happyReduction_19
happyReduction_19 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BOpExpr MinusOp happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  5 happyReduction_20
happyReduction_20 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BOpExpr MultOp happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  5 happyReduction_21
happyReduction_21 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BOpExpr DivOp happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  5 happyReduction_22
happyReduction_22 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BOpExpr ExpOp happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  5 happyReduction_23
happyReduction_23 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BOpExpr ModOp happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  5 happyReduction_24
happyReduction_24 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BOpExpr EqOp happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  5 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BOpExpr GtOp happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  5 happyReduction_26
happyReduction_26 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BOpExpr LtOp happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  5 happyReduction_27
happyReduction_27 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BOpExpr AndOp happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  5 happyReduction_28
happyReduction_28 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BOpExpr OrOp happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  5 happyReduction_29
happyReduction_29 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BOpExpr LeqOp happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  5 happyReduction_30
happyReduction_30 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BOpExpr GeqOp happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happyReduce 6 5 happyReduction_31
happyReduction_31 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (SupposingExpr happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 6 5 happyReduction_32
happyReduction_32 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (IfzExpr happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 6 5 happyReduction_33
happyReduction_33 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VarTok happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (OiExpr happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_34 = happyReduce 4 5 happyReduction_34
happyReduction_34 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (MateExpr happy_var_3
	) `HappyStk` happyRest

happyReduce_35 = happyReduce 4 5 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (BlokeExpr happy_var_3
	) `HappyStk` happyRest

happyReduce_36 = happyReduce 5 5 happyReduction_36
happyReduction_36 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TupleExpr happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_37 = happySpecReduce_1  5 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn5
		 (UnitExpr
	)

happyReduce_38 = happyReduce 4 5 happyReduction_38
happyReduction_38 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VarTok happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncExpr happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 4 5 happyReduction_39
happyReduction_39 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (ApplyExpr happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_40 = happyReduce 4 5 happyReduction_40
happyReduction_40 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (WhilstExpr happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_41 = happySpecReduce_2  5 happyReduction_41
happyReduction_41 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (RefExpr happy_var_2
	)
happyReduction_41 _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  5 happyReduction_42
happyReduction_42 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (AssignExpr happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  5 happyReduction_43
happyReduction_43 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (DerefExpr happy_var_2
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  5 happyReduction_44
happyReduction_44 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (SeqExpr happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 57 57 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	IntTok happy_dollar_dollar -> cont 6;
	RealTok happy_dollar_dollar -> cont 7;
	FeeTok -> cont 8;
	PieTok -> cont 9;
	PhiTok -> cont 10;
	MoleTok -> cont 11;
	PlusTok -> cont 12;
	MinusTok -> cont 13;
	MultTok -> cont 14;
	DivTok -> cont 15;
	LParenTok -> cont 16;
	RParenTok -> cont 17;
	LBracketTok -> cont 18;
	RBracketTok -> cont 19;
	ModTok -> cont 20;
	EqTok -> cont 21;
	ExpTok -> cont 22;
	GTTok -> cont 23;
	LTTok -> cont 24;
	LeqTok -> cont 25;
	GeqTok -> cont 26;
	SqrtTok -> cont 27;
	IfzTok -> cont 28;
	ForTok -> cont 29;
	AceTok -> cont 30;
	RankTok -> cont 31;
	VarTok happy_dollar_dollar -> cont 32;
	StringTok happy_dollar_dollar -> cont 33;
	SupposingTok -> cont 34;
	HenceTok -> cont 35;
	OtherwiseTok -> cont 36;
	HearyeTok -> cont 37;
	OiTok -> cont 38;
	IsTok -> cont 39;
	AndTok -> cont 40;
	OrTok -> cont 41;
	InnitTok -> cont 42;
	ColonizeTok -> cont 43;
	CheersTok -> cont 44;
	MateTok -> cont 45;
	BlokeTok -> cont 46;
	CommaTok -> cont 47;
	UnitTok -> cont 48;
	ArrowTok -> cont 49;
	BackslashTok -> cont 50;
	DisplayTok -> cont 51;
	EqEqTok -> cont 52;
	WhilstTok -> cont 53;
	DoethTok -> cont 54;
	PipeTok -> cont 55;
	TildeTok -> cont 56;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 57 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

happyThen :: () => Maybe a -> (a -> Maybe b) -> Maybe b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> Maybe a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Maybe a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> Maybe a
happyError' = (\(tokens, _) -> parseError tokens)
parse tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


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
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
