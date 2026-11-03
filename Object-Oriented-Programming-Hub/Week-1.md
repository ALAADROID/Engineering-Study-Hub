# Week 01: Java Fundamentals

## 1. Java Environment
- JVM (Java Virtual Machine): Executes Java bytecode.
- JRE (Java Runtime Environment): Provides what is needed to run Java programs.
- JDK (Java Development Kit): Provides development tools, including the Java compiler.
- javac: Compiles `.java` source code into `.class` bytecode.
- JVM can interpret bytecode and use JIT compilation.

## 2. Identifiers
- Cannot start with a digit.
- Can contain letters, digits, `_`, and `$`.
- Cannot contain spaces or hyphens.
- Cannot be a reserved keyword.
- Java is case-sensitive: `Age`, `age`, and `AGE` are different.

## 3. Data Types
- int: Whole numbers.
- double: Decimal numbers.
- float: Decimal numbers (use `f` suffix).
- char: One character, uses single quotes.
- boolean: true or false.
- String: Text, uses double quotes.

## 4. Integer Division
- `5 / 2` → 2
- `5.0 / 2` → 2.5
- Integer division discards the fractional part.
- Explicit casting: `(int) 5.9` → 5.

## 5. String Comparison
- `==` compares object references.
- `.equals()` compares String contents.
- Use `str.equals("text")` to compare String contents.

## 6. Definite Assignment
- A local variable must be initialized before use.
- Java checks whether the variable is assigned on every possible code path.
- Initialize variables or use complete if/else branches.

## 7. While Loops
- A while loop repeats while its condition is true.
- Update the loop variable to avoid infinite loops.
- `i < n` excludes n.
- `i <= n` includes n.
- Trace the initialization, condition, body, and update carefully.

## 8. Conditional Statements
- `if`: Checks a condition.
- `else if`: Checks another condition if previous ones were false.
- `else`: Executes if all previous conditions were false.
- Conditions are checked from top to bottom.

## 9. Counters
- `count++` increases count by one.
- A counter can track how many elements satisfy a condition.
