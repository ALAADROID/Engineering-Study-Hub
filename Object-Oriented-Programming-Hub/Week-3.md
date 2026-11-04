# Week 3 — Classes, Objects & Memory

## 1. Class vs Object
- Class: blueprint defining fields and methods.
- Object: instance created from a class using `new`.

## 2. Constructor
- Initializes an object when it is created.
- Constructor name must match the class name.
- Has no return type, not even `void`.
- If you define any constructor, Java no longer provides
  the default no-argument constructor automatically.

## 3. this
- Refers to the current object.
- `this.x = x` assigns the parameter `x` to the object's field `x`.
- Useful when a parameter shadows a field.

## 4. Memory
- Stack: local variables and method-call information.
- Heap: objects created using `new`.
- Method Area: class-related runtime information.

## 5. Reference Semantics
- Object variables hold references, not the actual objects.
- `b = a` copies the reference, NOT the object.
- Two references can point to the same object.
- Mutating through one reference affects the shared object.

## 6. Composition (HAS-A)
- A class can contain an object of another class as a field.
- Example: Rectangle HAS-A Point.
- Assigning `this.topLeft = topLeft` copies the reference.

## 7. Instance Methods
- Operate on an object's state.
- Example: `p.translate(3, 4)` modifies the existing Point.

## 8. toString()
- Provides a String representation of an object.
- `System.out.println(object)` automatically calls toString().
