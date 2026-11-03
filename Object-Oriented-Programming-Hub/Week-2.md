# Week 02: Control Flow, Arrays & Methods

## 1. Control Flow
- if / else if / else: Conditions are checked from top to bottom.
- Put higher thresholds before lower thresholds when conditions overlap.
- switch: Selects a branch based on a matching value.
- break: Exits a traditional switch statement.
- Without break, execution may fall through.
- Switch expressions use `->` and produce a value.

## 2. Loops
- while: Checks the condition before each iteration.
- for: initialization; condition; update.
- Enhanced-for: `for (int x : array)` visits every element.
- Always update loop variables when necessary to avoid infinite loops.

## 3. Arrays
- Arrays store multiple values of the same type.
- Indexing starts at 0.
- Last index = length - 1.
- Use `array.length` to get the number of elements.
- `new int[5]` creates five integer positions initialized to 0.
- Invalid index causes ArrayIndexOutOfBoundsException.
- 2D arrays use `array[row][column]`.
- `matrix.length` = number of rows.
- `matrix[i].length` = number of columns in row i.

## 4. Methods
- Parameters are variables in the method declaration.
- Arguments are values passed during a method call.
- Return type determines what the method returns.
- void means no return value.
- return sends a value back to the caller.
- Scope determines where a variable can be accessed.

## 5. Common Array Operations
- Sum: `sum += scores[i]`
- Counter: `count++`
- Highest: compare using `>`
- Lowest: compare using `<`
- Passing count: increase counter when score >= passing threshold.
- Use `i = 0` to start at the first array element.

## 6. Packages and Main
- package groups related classes.
- import allows access to classes from other packages.
- `java.lang` is automatically imported.
- `public`: accessible to the JVM.
- `static`: callable without creating an object.
- `void`: returns nothing.
- `String[] args`: command-line arguments.

## 7. Library Classes
- String: text and String operations.
- Math: mathematical operations; methods are static.
- ArrayList: dynamically sized collection.
- Array: `length`, `array[i]`.
- ArrayList: `size()`, `get(i)`, `add()`, `set()`.

## 8. References and null
- Primitive variables store their own values.
- Reference variables refer to objects.
- Assigning one reference to another can make both point to the same object.
- `==` compares references for objects.
- `.equals()` compares logical contents when implemented by the class.
- Arrays use reference comparison with their normal equals().
- null means a reference points to no object.
- Calling a method through null causes NullPointerException.
- Check `reference != null` before using it when necessary.
