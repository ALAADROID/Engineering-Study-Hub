# Week 4 — Encapsulation, Static, Final & Overloading

## 1. Access Modifiers
Control where class members can be accessed.

- `private`: Same class only.
- Default (no modifier): Same package.
- `protected`: Same package + subclasses in other packages.
- `public`: Accessible from anywhere, subject to normal access rules.

## 2. Encapsulation
Protecting internal fields and providing controlled access through methods.

- Fields are commonly `private`.
- Getters retrieve field values.
- Setters modify fields, optionally validating input.
- Methods such as `deposit()` and `withdraw()` control how an object's state changes.

## 3. static
A static member belongs to the class, not an individual object.

- One shared static field is used by all instances.
- Static methods can directly access static members.
- Static methods cannot use `this` or directly access instance members.
- Access static members using the class name.

Example:
`BankAccount.getTotalAccounts()`

## 4. final
Prevents reassignment of a variable or field.

- A final field must be assigned once.
- `public static final` is the common constant pattern.
- Constants conventionally use uppercase names.
- A final object reference cannot point to another object, but the object's contents may still change.

Example:
`public static final String CURRENCY = "TL";`

## 5. Method Overloading
Multiple methods with the same name but different parameter lists.

The signature differs by:
- Number of parameters.
- Parameter types.
- Parameter order.

Changing only the return type is NOT valid overloading.

Java selects the matching overload at compile time.

## 6. Pass-by-Value
Java always uses pass-by-value.

- Primitive arguments: A copy of the primitive value is passed.
- Object arguments: A copy of the reference is passed.
- Modifying an object through that reference can affect the original object.
- Reassigning the local parameter does not reassign the caller's variable.

## 7. BankAccount Lab
- `private` protects account fields.
- `deposit()` rejects amounts <= 0.
- `withdraw()` rejects amounts <= 0 or greater than the balance.
- `static totalAccounts` counts all created accounts.
- Constructor increments the shared counter.
- `transfer()` withdraws from one account and deposits into another.
- `this` refers to the current account.
- `toString()` includes the owner, balance, and currency.
