# The big comparison table — Weeks 1–5

## A. Java fundamentals and control flow
| Concept 1 | Concept 2 | Difference |
|---|---|---|
| `==` | `.equals()` | For objects, `==` compares references; `.equals()` compares equality according to the method implementation. |
| `=` | `==` | Assignment vs comparison. |
| `int` | `double` | Integer vs decimal number. |
| `5 / 2` | `5.0 / 2` | Integer division gives `2`; decimal division gives `2.5`. |
| `break` | `continue` | `break` exits the loop; `continue` skips to the next iteration. |
| Normal `for` | Enhanced `for` | Normal loop uses an index; enhanced loop visits elements directly. |
| `while` | `do-while` | `while` checks before execution; `do-while` executes at least once. |
| `switch` statement | Switch expression | A switch expression can produce a value, commonly using `->`. |

## B. Classes and objects
| Concept 1 | Concept 2 | Difference |
|---|---|---|
| Class | Object | Blueprint vs actual instance. |
| Field | Local variable | Class-level data vs method-local variable. |
| Constructor | Method | Constructor initializes an object; a method performs an operation. |
| `this` | `super` | Current object vs parent class. |
| Primitive variable | Reference variable | Stores a primitive value vs stores a reference to an object. |
| `a = b` for primitives | `a = b` for objects | Copies the value vs copies the reference. |
| Stack | Heap | Conceptual storage for method calls/local variables vs objects. |
| `null` | An object reference | No object vs a reference pointing to an object. |

## C. Modifiers and methods
| Concept 1 | Concept 2 | Difference |
|---|---|---|
| `private` | `public` | Same class only vs accessible from anywhere, subject to access rules. |
| `static` | Instance member | Belongs to the class vs belongs to each object. |
| `final` | Non-final | Cannot be reassigned vs can be reassigned. |
| `final` reference | Immutable object | Reference cannot change; object contents may still change. |
| Getter | Setter | Reads a field vs modifies a field. |
| Overloading | Overriding | Different parameter lists vs redefining an inherited method. |
| Compile time | Runtime | Before execution vs during execution. |

## D. Inheritance and polymorphism
| Concept 1 | Concept 2 | Difference |
|---|---|---|
| Superclass | Subclass | Parent vs child. |
| `extends` | `implements` | Inherits from a class vs implements an interface. |
| IS-A | HAS-A | Inheritance vs composition. |
| `this` | `super` | Current object vs superclass reference. |
| Overloading | Overriding | Different parameters vs inherited method implementation. |
| Abstract class | Concrete class | Cannot be instantiated directly vs can be instantiated. |
| Reference type | Actual object type | Declared variable type vs real object's class. |
| `instanceof` | `getClass()` | Checks compatibility including subclasses vs exact runtime class. |
| `equals()` | `hashCode()` | Compares equality vs generates an integer hash value. |
| `toString()` | `getClass()` | Text representation vs runtime class information. |
| `HashSet` | ArrayList | Unique elements vs allows duplicate elements. |


## E. Fields, Methods, and Instances:
| Term | Meaning |
|---|---|
| Field | A variable declared inside a class, outside methods. |
| Method | A function belonging to a class. |
| Instance | An individual object created from a class. |
| Instance variable | A non-static field belonging to each object. |
| Instance method | A non-static method called on an object. |


## F. Overloading vs overriding
```java
// OVERLOADING
void print(int x) {}
void print(String x) {}

// Same name, different parameters.
```


```java
// OVERRIDING
class Animal {
    void sound() {
        System.out.println("Animal sound");
    }
}

class Dog extends Animal {
    @Override
    void sound() {
        System.out.println("Woof");
    }
}

// Same inherited method, different implementation.
```

> Overloading → compile-time method selection.
> Overriding → runtime dynamic dispatch for instance methods.
