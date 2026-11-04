## 1. AI Fundamentals
- AI: Broad field of creating intelligent systems.
- ML: Subset of AI; learns patterns from data.
- DL: Subset of ML; uses deep neural networks.
- Symbolic AI: Explicit rules and knowledge.
- Data-Driven AI: Learns from data.
- Training: Learning model parameters.
- Inference: Using a trained model.
- Narrow AI: Performs specific tasks.
- AGI: General intelligence across different tasks.
- Sensors receive information; actuators perform actions.
- PEAS = Performance, Environment, Actuators, Sensors.

## 2. Classical Search
- Search problem = Initial State, Actions, Transition Model, Goal Test, Path Cost.
- State Space = All reachable states.
- BFS: Queue (FIFO), explores level by level; complete and optimal for equal step costs; high memory.
- DFS: Stack (LIFO), explores deeply; lower memory; not generally complete or optimal.
- UCS: Priority Queue; expands lowest path cost \(g(n)\); optimal with nonnegative costs under standard conditions.
- Uninformed Search: Does not use a goal-distance heuristic.
- Informed Search: Uses heuristic information \(h(n)\).
- Greedy: \(f(n)=h(n)\); not generally optimal.
- A*: \(f(n)=g(n)+h(n)\).
- Admissible: \(h(n)\leq h^*(n)\).
- Consistent: \(h(n)\leq c(n,n')+h(n')\).
- BFS uses more memory than DFS because it stores a large frontier.

## 3. Adversarial Search
- Adversarial Search: Search involving competing agents.
- MAX chooses the largest value.
- MIN chooses the smallest value.
- Minimax: Selects the best guaranteed result against an optimal opponent.
- Terminal Utility: Actual outcome value.
- Evaluation Function: Estimates a non-terminal position.
- Game-tree complexity: Approximately \(O(b^m)\).
- Horizon Effect: Important events beyond the search depth may be missed.
- Alpha: Best value MAX can guarantee.
- Beta: Best value MIN can guarantee.
- Alpha-Beta Pruning: Prune when \(\alpha\geq\beta\).
- Alpha-Beta reduces computation without changing the minimax result.

## 4. Constraint Satisfaction Problems
- CSP = Variables + Domains + Constraints.
- Complete Assignment: Every variable has a value.
- Consistent Assignment: No constraint is violated.
- Backtracking: Undo an assignment when it causes failure.
- MRV: Choose the variable with the fewest legal values.
- Degree: Choose the variable constraining the most unassigned neighbors.
- LCV: Choose the value that eliminates the fewest options for others.
- Forward Checking: Remove incompatible neighboring values after an assignment.
- Arc Consistency: Every remaining value must have compatible support in the connected variable's domain.

---

## Exam trap: Is A optimal with an admissible but inconsistent heuristic?

### The correct answer needs a qualification:
- Tree search: Yes, an admissible heuristic can guarantee optimality under the standard assumptions.
- Graph search: It can still be optimal if the algorithm correctly reopens states when a cheaper path is found.
- A graph-search implementation that permanently closes nodes and never reopens them may lose the optimality guarantee with an inconsistent heuristic.

### Quick algorithm selection
- Equal step costs and shortest number of steps? → BFS.
- Low memory and depth exploration? → DFS, but watch completeness and optimality.
- Different path costs? → UCS.
- Want to use only estimated distance? → Greedy.
- Want actual cost plus estimated remaining cost? → A*.
