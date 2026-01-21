# Priority Queue & Heap — Quick Review

## Priority Queue
A data structure where elements are removed based on priority, not arrival time.

- NOT FIFO
- Higher priority comes out first
- Used in:
  - CPU scheduling
  - Emergency systems
  - Task management

---

## Normal Queue vs Priority Queue

| Feature | Queue | Priority Queue |
|------|------|------|
| Order | FIFO | By priority |
| Removal | First inserted | Highest priority |
| Real-life | Bank line | Hospital ER |

---

## Heap (Implementation of Priority Queue)

A priority queue is usually implemented using a **Heap**.

### Heap Properties
- Complete binary tree
- Stored in an array
- Two types:
  - Max-Heap: Parent ≥ children
  - Min-Heap: Parent ≤ children

---

## Why Heap is Efficient

Height of heap = log₂(n)

Because:
- Each level doubles the number of nodes
- Operations move level by level

---

## Time Complexity (IMPORTANT FOR MCQ)

| Operation | Complexity | Reason |
|--------|------------|-------|
| Insert | O(log n) | Bubble-up through heap levels |
| Delete (max/min) | O(log n) | Bubble-down through heap levels |
| Get max/min | O(1) | Always at root |

---

## Bubble-Up (Insertion)
1. Insert element at the end
2. Compare with parent
3. Swap if needed
4. Repeat until correct position

<img width="900" height="300" alt="image" src="https://github.com/user-attachments/assets/fbad5c8d-dbd4-4318-a5c1-31751ef132b5" />
Worst case: moves from bottom to root → O(log n)

---

## Bubble-Down (Deletion)
1. Remove root
2. Move last element to root
3. Compare with children
4. Swap with larger (or smaller) child
5. Repeat

Worst case: moves from root to bottom → O(log n)

---

## Why NOT Array for Priority Queue?

- Insert → O(n)
- Delete → O(n)
- Requires shifting many elements

Heap avoids this by keeping height small (log n).

---

## Key MCQ Facts to Memorize

- Priority Queue ≠ FIFO
- Priority Queue is usually implemented using Heap
- Heap is a complete binary tree
- Heap is stored as an array
- Insert/Delete → O(log n)
- Get max/min → O(1)
