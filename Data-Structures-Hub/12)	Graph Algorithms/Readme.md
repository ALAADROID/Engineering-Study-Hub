# Graph Algorithms – Quick Review (MCQ Focus)

## 1. Graph Traversal
Traversal = visiting all vertices of a graph.

### 🔹 Breadth-First Search (BFS)
- Uses: **Queue**
- Visits level by level
- Finds **shortest path** in unweighted graphs
- Time Complexity: **O(V + E)**

### 🔹 Depth-First Search (DFS)
- Uses: **Stack** (or recursion)
- Goes as deep as possible
- Used for cycle detection
- Time Complexity: **O(V + E)**

---

## 2. Cycle Detection
- Directed graph: use DFS + recursion stack
- Undirected graph: DFS with parent check

---

## 3. Topological Sort
- Only for **Directed Acyclic Graphs (DAG)**
- Orders vertices based on dependencies
- Uses:
  - DFS OR BFS
  - In-degree + Queue
- If cycle exists → ❌ no topological sort

---

## 4. Important MCQ Facts
✅ BFS → Queue  
✅ DFS → Stack  
✅ Topological sort → DAG only  
❌ Cyclic graph → no topological order  
