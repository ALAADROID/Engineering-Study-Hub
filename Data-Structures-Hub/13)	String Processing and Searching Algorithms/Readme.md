# String Searching – Exam Review

## Basic Definitions
- Text: the big string
- Pattern: the string we search for

---

## 1. Naive (Brute Force) Search
- Compare pattern at every position
- Shift by 1 on mismatch

### Complexity
- Worst case: **O(n × m)**

### Notes
❌ Re-checks characters  
✅ Simple to understand  

---

## 2. KMP Algorithm
Used to avoid redundant comparisons.

### Key Concept: LPS Array
- LPS = Longest Prefix which is also Suffix
- Preprocessed from pattern

### How it works
- Uses two pointers (text & pattern)
- On mismatch:
  - Pattern pointer jumps using LPS
  - Text pointer never moves backward

### Complexity
- Preprocessing: O(m)
- Searching: O(n)
- Total: **O(n + m)**

---

## Naive vs KMP
| Feature | Naive | KMP |
|------|------|-----|
| Redundant checks | Yes ❌ | No ✅ |
| Preprocessing | No | Yes |
| Worst time | O(n·m) | O(n+m) |

---

## MCQ Must-Know
✅ KMP uses LPS  
✅ Faster than naive  
❌ Naive is inefficient  
