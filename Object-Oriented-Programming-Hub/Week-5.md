# Week 5 — Inheritance, Polymorphism & Object Class

## 1. Inheritance
Allows a class to inherit accessible members from another class.

- Superclass: Parent/base class.
- Subclass: Child/derived class.
- `extends`: Establishes inheritance.
- IS-A: A Circle IS-A Shape.
- HAS-A: A Car HAS an Engine (composition).
- Java classes support single inheritance: one direct superclass.

## 2. super
Refers to the superclass.

- `super(...)` calls the parent constructor.
- Must be the first statement in a constructor.
- If omitted, Java normally inserts `super()`.
- If the parent has no no-argument constructor, explicitly call an existing constructor.

## 3. Method Overriding
A subclass provides its own implementation of an inherited method.

- Same method signature.
- Use `@Override` to let the compiler check the override.
- Different from overloading, which uses different parameter lists.

## 4. Dynamic Dispatch
For overridden instance methods, Java selects the implementation based on the actual object type at runtime, not just the reference type.

Example:
`Shape s = new Circle(5.0);`

`s.area()` executes Circle's area method.

## 5. Abstract
- An abstract class cannot be instantiated directly.
- An abstract method has no implementation/body.
- Concrete subclasses must implement inherited abstract methods.
- Abstract classes can contain constructors, fields, and normal methods.

## 6. Object Class
Every Java class ultimately inherits from `Object`.

Important methods:

- `toString()`: Returns a text representation of an object.
- `equals(Object obj)`: Compares objects according to the class's equality definition.
- `hashCode()`: Returns an integer used by hash-based collections.
- `getClass()`: Returns the actual runtime class.

## 7. equals() Pattern
1. Identity check: `this == other`.
2. Type/null check: `instanceof`.
3. Cast to the expected type.
4. Compare relevant fields.

Always use `equals(Object other)` when overriding Object's equals method, not `equals(MyClass other)`.

## 8. equals() Contract
- Reflexive: a.equals(a) is true.
- Symmetric: a.equals(b) = b.equals(a).
- Transitive: a equals b and b equals c means a equals c.
- Consistent: repeated comparisons remain consistent if relevant data is unchanged.
- Non-null: a.equals(null) is false.

## 9. hashCode() Contract
- Equal objects MUST have the same hash code.
- Same hash code does NOT guarantee equal objects.
- If equals is overridden, hashCode must also be overridden.
- Use the same fields in equals and hashCode.

Example:
`return Objects.hash(radius);`

## 10. Lab — ShapeLab
- Shape is the abstract superclass.
- Circle, Rectangle, Triangle extend Shape.
- Each subclass overrides area().
- Shape[] can store different Shape subclasses.
- biggest() uses dynamic dispatch to compare actual areas.
- HashSet uses equals() and hashCode() to identify duplicate objects.
- `set.contains(new Circle(5.0))` returns true when the existing Circle has equal contents and a matching hash code.
