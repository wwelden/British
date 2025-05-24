# The British Programming Language - Complete Specification

*A delightfully British approach to programming, innit!* 🇬🇧

## Table of Contents

1. [Introduction](#introduction)
2. [Basic Syntax](#basic-syntax)
3. [Data Types](#data-types)
4. [Literals and Constants](#literals-and-constants)
5. [Variables and Declarations](#variables-and-declarations)
6. [Operators](#operators)
7. [Expressions](#expressions)
8. [Control Structures](#control-structures)
9. [Functions](#functions)
10. [Object-Oriented Programming (v4)](#object-oriented-programming-v4)
11. [Built-in Functions and References](#built-in-functions-and-references)
12. [Grammar Reference](#grammar-reference)
13. [Examples and Use Cases](#examples-and-use-cases)

## Introduction

The British Programming Language is a functional programming language with object-oriented capabilities (v4+) that emphasizes British English terminology and a distinctive, polite syntax. Every statement must end with the characteristic British affirmation `innit`, making the code both functional and charmingly colloquial.

### Language Philosophy
- **Politeness**: Every statement ends with `innit` (short for "isn't it")
- **Clarity**: British English terminology makes code self-documenting
- **Expressiveness**: Rich set of operators and control structures
- **Object-Oriented**: Full OOP support with British terminology
- **Type Safety**: Strong typing with clear error reporting

## Basic Syntax

### Statement Termination
Every statement in British must end with `innit`:

```british
2 + 3 innit
hearye x is 42 innit
noble MyClass { serfs value innit } innit
```

### Comments
Comments begin with `--` and continue to the end of the line:

```british
-- This is a comment
2 + 3 innit  -- This is also a comment
```

### Case Sensitivity
The British language is case-sensitive with specific conventions:
- **Keywords**: lowercase (`noble`, `hearye`, `innit`)
- **Class names**: PascalCase starting with uppercase (`Stack`, `Counter`, `MyClass`)
- **Field/method names**: lowercase with underscores (`get_value`, `count`, `x`)
- **Variables**: UPPERCASE (`X`, `MYVAR`, `COUNTER`)

## Data Types

### Primitive Types

#### Numbers
- **Integers**: Whole numbers (e.g., `42`, `-17`, `0`)
- **Real numbers**: Floating-point (e.g., `3.14`, `-2.5`, `0.0`)

#### Booleans
- **`ace`**: Boolean true value
- **`rank`**: Boolean false value

#### Strings
- Enclosed in double backticks: `` `Hello, world!` ``

#### Unit Type
- **`#`**: Represents the unit value (similar to void or null)

### Composite Types

#### Tuples
- **Syntax**: `/ expr1 , expr2 \`
- **Example**: `/ 42 , ace \` creates a tuple of (42, true)

#### Objects (v4)
- **Class instances**: Created with `a ClassName(args)`
- **Fields**: Accessed with dot notation `object.field`
- **Methods**: Called with dot notation `object.method(args)`

## Literals and Constants

### Mathematical Constants
- **`fee`**: Euler's number (e ≈ 2.718)
- **`pie`**: Pi (π ≈ 3.14159)
- **`phi`**: Golden ratio (φ ≈ 1.618)
- **`mole`**: Avogadro's number (≈ 6.022 × 10²³)

### Examples
```british
fee innit           -- Outputs: 2.718281828459045
pie * 2 innit       -- Outputs: 6.283185307179586
phi + 1 innit       -- Outputs: 2.618033988749895
```

## Variables and Declarations

### Variable Declaration
Use `hearye` (hear ye) to declare variables:

```british
hearye X is 42 innit
hearye NAME is `Hello` innit
hearye FLAG is ace innit
```

### Immutable Bindings
Use `colonize` for immutable bindings:

```british
colonize PI is 3.14159 innit
colonize GREETING is `Good day!` innit
```

### Variable Naming
- Variables must be UPPERCASE
- Can contain letters, numbers, and underscores
- Must start with a letter or underscore

## Operators

### Arithmetic Operators
- **`+`**: Addition
- **`-`**: Subtraction
- **`*`**: Multiplication
- **`/`**: Division
- **`^`**: Exponentiation
- **`%`**: Modulo

### Comparison Operators
- **`=`**: Equality
- **`>`**: Greater than
- **`<`**: Less than
- **`geq`**: Greater than or equal (≥)
- **`leq`**: Less than or equal (≤)

### Logical Operators
- **`/\`**: Logical AND
- **`\/`**: Logical OR
- **`[expr]`**: Logical NOT

### Special Operators
- **`sqrt`**: Square root function
- **`~`**: Sequence operator (evaluate left, then right)
- **`==`**: Assignment/mutation
- **`|expr|`**: Dereference
- **`display`**: Create reference

## Expressions

### Arithmetic Expressions
```british
2 + 3 * 4 innit         -- Outputs: 14
sqrt 16 innit           -- Outputs: 4.0
2 ^ 8 innit             -- Outputs: 256
```

### Boolean Expressions
```british
ace /\ rank innit       -- Outputs: rank (false)
ace \/ rank innit       -- Outputs: ace (true)
[rank] innit            -- Outputs: ace (true)
```

### Comparison Expressions
```british
5 > 3 innit             -- Outputs: ace (true)
10 leq 10 innit         -- Outputs: ace (true)
`hello` = `world` innit -- Outputs: rank (false)
```

### Tuple Expressions
```british
/ 42 , `hello` \ innit  -- Creates tuple (42, "hello")
```

## Control Structures

### Conditional Expressions

#### If-Then-Else (`supposing`)
```british
supposing CONDITION hence TRUE_EXPR otherwise FALSE_EXPR innit
```

Example:
```british
hearye AGE is 18 innit
supposing AGE geq 18 hence `adult` otherwise `minor` innit
-- Outputs: `adult`
```

#### Zero Check (`ifz`)
```british
ifz EXPR hence ZERO_EXPR otherwise NONZERO_EXPR innit
```

Example:
```british
ifz 0 hence `zero` otherwise `not zero` innit
-- Outputs: `zero`
```

### Loops

#### For Loops (`oi`)
```british
oi VAR is INIT for CONDITION innit
```

Example:
```british
hearye I is 0 innit
oi I is 1 for I leq 5 innit  -- Iterates I from 1 while I ≤ 5
```

#### While Loops (`whilst`)
```british
whilst CONDITION doeth BODY innit
```

Example:
```british
hearye COUNT is 0 innit
whilst COUNT < 5 doeth COUNT = COUNT + 1 innit
```

## Functions

### Function Definition
Use `cheers` to define functions:

```british
cheers PARAM => BODY innit
```

### Function Application
```british
FUNCTION(ARGUMENT) innit
```

### Examples

#### Simple Function
```british
hearye DOUBLE is cheers X => X * 2 innit
DOUBLE(21) innit        -- Outputs: 42
```

#### Function with Conditional
```british
hearye ABS is cheers X => supposing X geq 0 hence X otherwise -X innit
ABS(-5) innit          -- Outputs: 5
```

### Higher-Order Functions
Functions can accept and return other functions:

```british
hearye APPLY_TWICE is cheers F => cheers X => F(F(X)) innit
hearye ADD_ONE is cheers X => X + 1 innit
APPLY_TWICE(ADD_ONE)(5) innit  -- Outputs: 7
```

## Object-Oriented Programming (v4)

### Class Declaration
Use `noble` to declare classes:

```british
noble ClassName {
    serfs field1 innit
    serfs field2 innit
    decree method1 (PARAM) is BODY innit
    decree method2 (PARAM) is BODY innit
} innit
```

### Field Declaration
Use `serfs` to declare fields:

```british
serfs fieldname innit
```

### Method Declaration
Use `decree` to declare methods:

```british
decree methodname (PARAMETER) is EXPRESSION innit
```

### Object Instantiation
Use `a` to create objects:

```british
hearye OBJECT is a ClassName(arg1, arg2, ...) innit
```

### Field Access
Use dot notation to access fields:

```british
OBJECT.fieldname innit
```

### Method Calls
Use dot notation to call methods:

```british
OBJECT.methodname(ARGUMENT) innit
```

### The `oneself` Keyword
Within methods, `oneself` refers to the current object:

```british
noble Person {
    serfs name innit
    decree greet (X) is `Hello, ` + oneself.name innit
    decree getself (X) is oneself innit
} innit
```

### Complete OOP Example

```british
-- Define a Counter class
noble Counter {
    serfs count innit
    decree increment (X) is oneself.count = oneself.count + 1 innit
    decree decrement (X) is oneself.count = oneself.count - 1 innit
    decree get (X) is oneself.count innit
    decree reset (X) is oneself.count = 0 innit
} innit

-- Create a counter object
hearye MYCOUNTER is a Counter(10) innit

-- Use the counter
MYCOUNTER.get(MYCOUNTER) innit        -- Outputs: 10
MYCOUNTER.increment(MYCOUNTER) innit  -- Increment
MYCOUNTER.get(MYCOUNTER) innit        -- Outputs: 11
MYCOUNTER.reset(MYCOUNTER) innit      -- Reset
MYCOUNTER.get(MYCOUNTER) innit        -- Outputs: 0
```

## Built-in Functions and References

### Mathematical Functions
- **`sqrt EXPR`**: Square root
- **`- EXPR`**: Unary minus (negation)

### Type Conversion and Inspection
- **`mate(EXPR)`**: Convert to string representation
- **`bloke(EXPR)`**: Type inspection/conversion

### Reference Operations
- **`display EXPR`**: Create a reference to a value
- **`|EXPR|`**: Dereference a reference
- **`EXPR == VALUE`**: Assign/mutate a reference

### Example with References
```british
hearye X is 42 innit
hearye REF is display X innit  -- Create reference to X
|REF| innit                    -- Outputs: 42 (dereference)
REF == 100 innit               -- Assign 100 to the reference
|REF| innit                    -- Outputs: 100
```

## Grammar Reference

### Formal Grammar (Simplified BNF)

```bnf
Program ::= Statement+

Statement ::= Declaration "innit"

Declaration ::= ExpressionDecl
             | VariableDecl
             | ImmutableDecl
             | ClassDecl

ExpressionDecl ::= Expression

VariableDecl ::= "hearye" VARIABLE "is" Expression

ImmutableDecl ::= "colonize" VARIABLE "is" Expression

ClassDecl ::= "noble" CLASSNAME "{" ClassMember* "}"

ClassMember ::= FieldDecl | MethodDecl

FieldDecl ::= "serfs" FIELDNAME "innit"

MethodDecl ::= "decree" METHODNAME "(" VARIABLE ")" "is" Expression "innit"

Expression ::= Literal
            | Variable
            | BinaryOp
            | UnaryOp
            | Conditional
            | Loop
            | Function
            | Application
            | Tuple
            | ObjectCreation
            | MethodCall
            | FieldAccess
            | Reference
            | Dereference
            | Assignment
            | Sequence
            | "(" Expression ")"

BinaryOp ::= Expression ("+"|"-"|"*"|"/"|"^"|"%"|"="|">"|"<"|"geq"|"leq"|"/\"|"\/") Expression

UnaryOp ::= ("-"|"sqrt"|"["|"mate"|"bloke"|"display") Expression ("]")?

Conditional ::= "supposing" Expression "hence" Expression "otherwise" Expression
             | "ifz" Expression "hence" Expression "otherwise" Expression

Loop ::= "oi" VARIABLE "is" Expression "for" Expression
      | "whilst" Expression "doeth" Expression

Function ::= "cheers" VARIABLE "=>" Expression

Application ::= Expression "(" Expression ")"

Tuple ::= "/" Expression "," Expression "\"

ObjectCreation ::= "a" CLASSNAME "(" ExpressionList ")"

MethodCall ::= Expression "." FIELDNAME "(" Expression ")"

FieldAccess ::= Expression "." FIELDNAME

Reference ::= "display" Expression

Dereference ::= "|" Expression "|"

Assignment ::= Expression "==" Expression

Sequence ::= Expression "~" Expression

ExpressionList ::= Expression ("," Expression)*

Literal ::= INTEGER | REAL | STRING | "ace" | "rank" | "#" | "fee" | "pie" | "phi" | "mole" | "oneself"

VARIABLE ::= [A-Z_]+
CLASSNAME ::= [A-Z][a-z]([a-zA-Z_])*
FIELDNAME ::= [a-z]([a-z_])*
INTEGER ::= [0-9]+
REAL ::= [0-9]*"."[0-9]+
STRING ::= "`"[^`]*"`"
```

### Operator Precedence (Highest to Lowest)

1. **Parentheses**: `()`
2. **Unary operators**: `-`, `sqrt`, `[]`, `mate()`, `bloke()`, `display`
3. **Exponentiation**: `^` (right-associative)
4. **Multiplication/Division/Modulo**: `*`, `/`, `%`
5. **Addition/Subtraction**: `+`, `-`
6. **Comparison**: `=`, `>`, `<`, `geq`, `leq`
7. **Logical AND**: `/\`
8. **Logical OR**: `\/`
9. **Assignment**: `==`
10. **Sequence**: `~`

## Examples and Use Cases

### Basic Arithmetic and Variables
```british
-- Simple arithmetic
2 + 3 * 4 innit         -- 14

-- Variables
hearye X is 10 innit
hearye Y is 20 innit
X + Y innit             -- 30

-- Constants
pie * 2 innit           -- 6.283185307179586
```

### Boolean Logic
```british
hearye A is ace innit
hearye B is rank innit
A /\ B innit            -- rank (false)
A \/ B innit            -- ace (true)
[B] innit               -- ace (true, NOT false)
```

### Conditionals
```british
hearye AGE is 25 innit
supposing AGE geq 18 hence `adult` otherwise `minor` innit  -- `adult`

hearye NUM is 0 innit
ifz NUM hence `zero` otherwise `positive` innit             -- `zero`
```

### Functions
```british
-- Simple function
hearye SQUARE is cheers X => X * X innit
SQUARE(5) innit         -- 25

-- Recursive function (factorial)
hearye FACT is cheers N =>
    supposing N leq 1
    hence 1
    otherwise N * FACT(N - 1) innit
FACT(5) innit           -- 120
```

### Object-Oriented Programming
```british
-- Define a Bank Account class
noble Account {
    serfs balance innit
    decree deposit (AMOUNT) is oneself.balance = oneself.balance + AMOUNT innit
    decree withdraw (AMOUNT) is oneself.balance = oneself.balance - AMOUNT innit
    decree getbalance (X) is oneself.balance innit
} innit

-- Create and use an account
hearye MYACCOUNT is a Account(100) innit
MYACCOUNT.getbalance(MYACCOUNT) innit    -- 100
MYACCOUNT.deposit(50) innit              -- Deposit 50
MYACCOUNT.getbalance(MYACCOUNT) innit    -- 150
MYACCOUNT.withdraw(25) innit             -- Withdraw 25
MYACCOUNT.getbalance(MYACCOUNT) innit    -- 125
```

### Advanced: Stack Implementation
```british
-- Define a Stack class
noble Stack {
    serfs items innit
    serfs top innit
    decree push (ITEM) is
        oneself.items = / ITEM , oneself.items \ ~
        oneself.top = oneself.top + 1 innit
    decree pop (X) is
        oneself.top = oneself.top - 1 innit
    decree peek (X) is oneself.items innit
    decree size (X) is oneself.top innit
} innit

-- Use the stack
hearye MYSTACK is a Stack(# , 0) innit  -- Empty stack with size 0
MYSTACK.push(42) innit
MYSTACK.push(17) innit
MYSTACK.size(MYSTACK) innit      -- 2
MYSTACK.peek(MYSTACK) innit      -- Shows top items
```

### Error Handling Patterns
```british
-- Safe division function
hearye SAFEDIV is cheers X => cheers Y =>
    ifz Y hence `Error: Division by zero`
    otherwise X / Y innit

SAFEDIV(10)(2) innit    -- 5.0
SAFEDIV(10)(0) innit    -- `Error: Division by zero`
```

## Language Features Summary

### ✅ Functional Programming
- First-class functions
- Higher-order functions
- Immutable bindings
- Pattern matching (via conditionals)

### ✅ Object-Oriented Programming
- Class definitions with fields and methods
- Object instantiation and method calls
- Encapsulation and data hiding
- Self-reference with `oneself`

### ✅ Type System
- Strong typing with type inference
- Primitive types (numbers, booleans, strings)
- Composite types (tuples, objects)
- Reference types with explicit dereferencing

### ✅ Control Flow
- Conditional expressions (`supposing`, `ifz`)
- Loop constructs (`oi`, `whilst`)
- Sequence operations (`~`)

### ✅ Built-in Features
- Mathematical constants and functions
- String manipulation
- Reference/pointer operations
- Type conversion utilities

---

*The British Programming Language: Making code as polite as a proper cup of tea, innit!* ☕🇬🇧

## Implementation Notes

This specification describes the complete British Programming Language including:
- **Core Language**: Original functional programming features
- **v4 Extensions**: Object-oriented programming capabilities
- **Type System**: Strong typing with inference
- **Runtime**: Interpretation with proper error handling

The language successfully combines functional and object-oriented paradigms while maintaining the distinctive British linguistic character that makes code both expressive and delightfully quirky.
