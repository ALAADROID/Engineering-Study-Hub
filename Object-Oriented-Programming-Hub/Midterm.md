## Exam traps:

| Trap | What you should remember |
|---|---|
| `String a = "Hi"; String b = "Hi"; a == b` | Don't assume `==` compares String contents. Use `.equals()`. |
| `int x = 5 / 2;` | Result is `2`, not `2.5`. |
| `int[] a = {1,2,3}; a[3]` | Runtime error: index out of bounds. |
| Calling a method on `null` | Runtime `NullPointerException`. |
| Writing a constructor but no no-argument constructor | Java no longer automatically provides the no-argument constructor. |
| `private` field accessed from another class | Compile-time error. |
| Calling an instance method directly from a static context | Usually a compile-time error. |
| Using `this` in a static method | Compile-time error. |
| Reassigning a `final` variable | Compile-time error. |
| Changing the contents of a final ArrayList | Allowed. |
| Two overloaded methods differ only by return type | Invalid overloading. |
| Instantiating an abstract class | Compile-time error. |
| Parent has only `Shape(String name)`, child omits `super(...)` | Implicit `super()` fails. |
| Writing `equals(Circle)` instead of `equals(Object)` | Overloading, not overriding. |
| Overriding `equals()` but not `hashCode()` | Violates the equality/hash-code contract. |
| Two different objects have the same hash code | Possible; doesn't mean they are equal. |
| `Shape s = new Circle(5); s.area()` | Calls Circle's overridden method. |
| `s instanceof Shape` when `s` points to Circle | True. |
| `s.getClass() == Shape.class` in that same example | False. |
| Calling `new Rectangle(3,4)` | Parent constructor runs before the subclass constructor body. |
| A method receives an object and reassigns its parameter | Does not change the caller's reference. |
| A method receives an object and modifies its fields | Can modify the original object. |
| HashSet receives two equal objects with correct hashCode | Stores one of them. |
