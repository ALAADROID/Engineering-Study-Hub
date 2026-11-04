# Week 2 — State Spaces and Search Algorithms

## 1. Search Problem

Search explores possible states and actions to find a solution.

**Five Components:**
1. Initial State: Starting point.
2. Actions: Available operations.
3. Transition Model: Result of an action.
4. Goal Test: Checks whether the goal is reached.
5. Path Cost: Total cost of a path.

## 2. Important Terminology

- **State Space:** All possible states of a problem.
- **State:** A configuration of the problem.
- **Search Node:** A state plus search information (parent, action, depth, cost).
- **Frontier:** Discovered nodes waiting to be expanded.
- **Explored Set:** Nodes that have already been expanded.
- **Generated:** A node has been discovered.
- **Expanded:** A node has been selected and its successors examined.
- **Branching Factor (b):** Number of possible successors.
- **Depth (d):** Number of steps from the initial state.
- **Heuristic h(n):** Estimated remaining cost to the goal.

Nodes at depth d: \(b^d\)

## 3. Search Evaluation

- **Completeness:** Finds a solution if one exists (under specified conditions).
- **Optimality:** Finds the best solution.
- **Time Complexity:** Time required.
- **Space Complexity:** Memory required.

## 4. Uninformed Search

**BFS — Breadth-First Search**
- Explores level by level.
- Uses Queue (FIFO).
- Finds the shallowest solution.
- Optimal when all step costs are equal.
- Can require large memory.

**DFS — Depth-First Search**
- Explores one branch deeply before backtracking.
- Uses Stack (LIFO).
- Not generally optimal.
- May fail to terminate in infinite-depth spaces.

**UCS — Uniform Cost Search**
- Expands the node with the lowest path cost.
- Uses Priority Queue.
- \(g(n)\) = accumulated cost from start.
- Finds the lowest-cost solution under suitable nonnegative-cost conditions.
- Tests the goal when it is selected from the priority queue.

## 5. Informed Search

**Greedy Best-First Search**
- Selects the node with the lowest estimated remaining cost.
- Priority = \(h(n)\).
- Not generally optimal.

**A* Search**
- Combines actual path cost and estimated remaining cost.
- \(f(n)=g(n)+h(n)\)
- Selects the node with the lowest f-value.
- Optimal with a suitable admissible heuristic and correct graph-search handling.

## 6. Heuristics

**Manhattan Distance:** For horizontal and vertical movement.

\(h(n)=|x_g-x|+|y_g-y|\)

**Euclidean Distance:** Straight-line distance.

\(h(n)=\sqrt{(x_g-x)^2+(y_g-y)^2}\)

**Admissible Heuristic:** Never overestimates the true minimum remaining cost.

\(h(n)\leq h^*(n)\)

**Consistent Heuristic:**

\(h(n)\leq c(n,n')+h(n')\)

## 7. Python Data Structures

| Structure | Purpose |
|---|---|
| deque | BFS Queue |
| list | DFS Stack |
| heapq | UCS / A* Priority Queue |
| set | Track discovered states |
| dict | Store parents and costs |

**Path Reconstruction:** Store each node's parent, then follow parent pointers backward from the goal and reverse the path.

## 8. Algorithm Comparison

| Algorithm | Priority |
|---|---|
| BFS | Shallowest node |
| DFS | Deepest node |
| UCS | Lowest g(n) |
| Greedy | Lowest h(n) |
| A* | Lowest g(n) + h(n) |
