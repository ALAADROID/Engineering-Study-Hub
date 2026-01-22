# Graphs: Representation and Traversal

## 1. Graph Basics
- A graph consists of:
  - **Vertices (V)** → nodes
  - **Edges (E)** → connections between nodes
- Types:
  - **Directed graph** (u → v)
  - **Undirected graph** (u — v)

---

## 2. Graph Representation

### A) Adjacency Matrix
- 2D array of size V × V
- `matrix[i][j] = 1` → edge exists
- `matrix[i][j] = 0` → no edge

**Properties**
- Space: **O(V²)**
- Edge lookup: **O(1)**
- Wastes memory for sparse graphs

**Best for**
- Dense graphs

---

### B) Adjacency List (Most Used)
- Each vertex stores a list of neighbors
- Implemented using array/vector of lists

**Properties**
- Space: **O(V + E)**
- Edge lookup: **O(deg(V))**
- Memory efficient

**Best for**
- Sparse graphs
- Real-world applications

---

### Matrix vs List (Important)
| Feature | Matrix | List |
|------|------|------|
| Space | O(V²) | O(V + E) |
| Edge check | O(1) | O(deg(V)) |
| Best for | Dense graphs | Sparse graphs |
| Used in practice | Rare | Common |

---

## 3. Graph Traversal

Traversal = visiting all reachable vertices.

### A) BFS – Breadth First Search
- Visits **level by level**
- Uses **Queue**
- Finds **shortest path** in unweighted graphs

**Complexity**
- Time: **O(V + E)**
- Space: **O(V)**

**Applications**
- Social networks
- Shortest path (unweighted)

---

### B) DFS – Depth First Search
- Goes deep, then backtracks
- Uses **Stack / Recursion**

**Complexity**
- Time: **O(V + E)**
- Space: **O(V)**

**Applications**
- Cycle detection
- Maze solving
- File systems

---

### BFS vs DFS
| Feature | BFS | DFS |
|------|------|------|
| Data structure | Queue | Stack / Recursion |
| Order | Level by level | Depth first |
| Shortest path | Yes | No |
| Memory | Higher | Lower |

---

## 4. Directed vs Undirected Graphs
- **Directed**: edge stored once (u → v)
- **Undirected**: edge stored twice (u → v, v → u)

---

## BFS & DFS:
<img width="1001" height="501" alt="image" src="https://github.com/user-attachments/assets/030ba19a-b342-4a2d-8d57-4e2e2bd46b6e" />

---

## 5. MCQ Facts (Must Memorize)
- BFS uses → **Queue**
- DFS uses → **Stack / Recursion**
- Sparse graph → **Adjacency List**
- BFS / DFS complexity → **O(V + E)**
- Shortest path (unweighted) → **BFS**
