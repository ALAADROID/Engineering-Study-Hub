# Hashing & Hash Tables — Exam Review (MCQ Focus)

## What is Hashing?
Hashing is a technique used to **map data (keys)** to a **fixed-size table** using a **hash function**.

Goal:
- Fast search
- Fast insert
- Fast delete

---

## Hash Function
A function that converts a key into an index.

Example:
h(key) = key % table_size


Properties of a good hash function:
- Fast to compute
- Distributes keys uniformly
- Minimizes collisions

---

## Hash Table
A data structure that stores data using hashing.

- Uses an array internally
- Index is calculated using a hash function
- Direct access to elements

---

## Time Complexity (VERY IMPORTANT)

| Operation | Average Case | Worst Case |
|---------|-------------|-----------|
| Search | O(1) | O(n) |
| Insert | O(1) | O(n) |
| Delete | O(1) | O(n) |

📌 Average case assumes **good hash function & low collisions**.

---

## Why Average Case is O(1)?
- Hash function gives direct index
- No loops over all elements
- One computation → one access

---

## Why Worst Case is O(n)?
- Happens when many keys collide
- All elements go into one place
- Becomes like a linked list

---

## Collision
A collision occurs when:
h(key1) == h(key2)


Two different keys → same index

Collisions are **unavoidable**.

---

## Collision Resolution Techniques

### 1️⃣ Chaining
- Each table index stores a linked list
- Colliding elements are added to the list

Pros:
- Simple
- Easy to implement

Cons:
- Performance degrades if list grows

---

### 2️⃣ Open Addressing
All elements stored **inside the table**

Types:
- Linear Probing
- Quadratic Probing
- Double Hashing

---

## Linear Probing
If index is occupied:
index = (index + 1) % table_size


Problem:
- Primary clustering (keys group together)

---

## Quadratic Probing
If index is occupied:
index = (index + i²) % table_size


Reduces clustering compared to linear probing.

---

## Double Hashing
Uses a second hash function:
index = (h1(key) + i * h2(key)) % table_size


Best collision handling among probing methods.

---

## Load Factor (α)
α = number_of_elements / table_size


Meaning:
- How full the table is

Effects:
- High α → more collisions
- Low α → better performance

---

## Rehashing
When load factor becomes too high:
- Create a larger table
- Reinsert all elements
- Improves performance

---

## Hashing vs Array

| Feature | Array | Hash Table |
|------|------|------------|
| Access | Index-based | Key-based |
| Search | O(n) | O(1) avg |
| Order | Sequential | No order |

---

## Comparesation 

| The way           | Uses List? | Problem                 |
| ----------------- | ------------ | --------------------- |
| Chaining          | ✔ نعم        | مساحة إضافية          |
| Linear Probing    | ❌ لا         | Clustering            |
| Quadratic Probing | ❌ لا         | قد لا يزور كل الخانات |
| Double Hashing    | ❌ لا         | أعقد قليلًا           |

---

## Common MCQ Traps ❗

✔ Hash tables are **not sorted**  
✔ Collisions **always exist**  
✔ O(1) is **average case**, not guaranteed  
✔ Worst case occurs with poor hash function  
✔ Chaining uses **linked lists**  

---

## One-Line Exam Facts (MEMORIZE)

- Hashing maps keys to indices
- Hash table uses an array
- Collision = same index
- Chaining uses linked lists
- Load factor affects performance
- Average search = O(1)
- Worst case = O(n)


