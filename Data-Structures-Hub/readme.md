# Types of Data Structures
![e1aca977880d4dce83f295c00](https://github.com/user-attachments/assets/3a34a535-8f45-4d05-ae4e-ad8a61460bbf)
---
# DSA Final Exam – Super Quick Review

## 1️⃣ Big-O, Ω, Θ
- O → worst case
- Ω → best case
- Θ → exact bound
- O(1): constant
- O(log n): divide by 2 (binary, heap height)
- O(n): loop once
- O(n²): nested loops
- O(n log n): divide & conquer

---

## 2️⃣ Linked Lists
- Singly: next
- Doubly: prev + next
- Circular: last → head

Operations:
- Insert head → O(1)
- Insert end → O(n)
- Delete by value → O(n)
- No random access ❌

---

## 3️⃣ Stack & Queue
Stack:
- LIFO
- push / pop → O(1)

Queue:
- FIFO
- enqueue / dequeue → O(1)

---

## 4️⃣ Priority Queue (Heap)
- Implemented using **Heap**
- Heap = complete binary tree
- Stored as array

Max-Heap:
- Parent ≥ children

Operations:
- Insert → O(log n) (bubble up)
- Remove max → O(log n) (bubble down)
- Get max → O(1)

Why log n?
→ height of complete binary tree = log n

---

## 5️⃣ Hashing & Hash Tables
- Hash function → key → index
- Goal: fast access

Collision handling:
1. Chaining → linked list at index
2. Open Addressing:
   - Linear probing
   - Quadratic probing
   - Double hashing

Key terms:
- Load factor = n / table size
- Good hash → uniform distribution

Average:
- Search / Insert / Delete → O(1)

---

## 6️⃣ Graph Representation
- Adjacency Matrix:
  - O(V²)
  - Fast edge check
- Adjacency List:
  - O(V + E)
  - Efficient, most used

---

## 7️⃣ Graph Traversal
BFS:
- Queue
- Level order
- Shortest path (unweighted)

DFS:
- Stack / recursion
- Deep exploration

---

## 8️⃣ Graph Algorithms
- BFS → unweighted shortest path
- Dijkstra → weighted (no negative)
- Bellman-Ford → negative weights
- Floyd-Warshall → all pairs

---

## 9️⃣ String Searching
Naive:
- O(n·m)

KMP:
- Uses LPS array
- Avoids rechecking
- O(n + m)

LPS:
- Longest prefix = suffix
- Built from PATTERN only

---

## 🔟 Sorting Algorithms
Bubble:
- O(n²)
- Simple

Selection:
- O(n²)
- Few swaps

Insertion:
- O(n²), best O(n)
- Good for nearly sorted

Merge:
- O(n log n)
- Stable, extra space

Quick:
- Avg O(n log n)
- Worst O(n²)

Radix:
- Non-comparison
- Digit based

---

## 🧠 Golden Rules (MCQ Gold)
- Heap ≠ BST
- Priority Queue ≠ FIFO
- BFS → Queue
- DFS → Stack
- Hash table ≠ sorted
- Dijkstra ❌ negative weights
