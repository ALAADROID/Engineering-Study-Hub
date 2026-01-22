# Sorting Algorithms – Quick Review (DSA C++)

## 1. What is Sorting?
Sorting means arranging data in **ascending or descending order**.

Why sorting is important:
- Faster searching
- Easier data processing
- Used before many algorithms (binary search, graph algorithms)

---

## 2. Types of Sorting Algorithms

### Comparison-Based Sorting
Algorithms that compare elements:
- Bubble Sort
- Selection Sort
- Insertion Sort
- Merge Sort
- Quick Sort

🔹 Lower bound: **Ω(n log n)**

---

### Non-Comparison Sorting
Algorithms that do not compare elements directly:
- Counting Sort
- Radix Sort

Used when:
- Data range is known
- Data is numeric (digits)

---

## 3. Simple Sorting Algorithms

### Bubble Sort
**Idea:** Swap adjacent elements if they are in the wrong order.

Time Complexity:
- Worst / Average: **O(n²)**
- Best (already sorted): **O(n)**

Reason:
- Nested loops → repeated comparisons

---

### Selection Sort
**Idea:** Find the minimum element and place it in the correct position.

Time Complexity:
- Best / Average / Worst: **O(n²)**

Key Notes:
- Few swaps
- Not adaptive (doesn’t improve if sorted)

---

### Insertion Sort
**Idea:** Insert each element into its correct position (like sorting cards).

Time Complexity:
- Worst: **O(n²)**
- Best (nearly sorted): **O(n)**

Best used for:
- Small datasets
- Nearly sorted arrays

---

## 4. Recursive Sorting Algorithms

### Merge Sort
**Idea:** Divide array → sort halves → merge.

Time Complexity:
- Always **O(n log n)**

Why?
- log n levels of division
- n work per level

Properties:
- Stable ✔
- Extra memory ❌

---

### Quick Sort
**Idea:** Choose a pivot and partition array.

Time Complexity:
- Best / Average: **O(n log n)**
- Worst (bad pivot): **O(n²)**

Properties:
- Very fast in practice
- In-place ✔
- Not stable ❌

---

## 5. Non-Comparison Sorting

### Radix Sort
**Idea:** Sort numbers digit by digit.

Time Complexity:
- **O(d · n)** (d = number of digits)

Notes:
- Uses Counting Sort internally
- Works only with numbers / fixed-length keys

---

## 6. Why Time Complexity Differs

- **O(n²)** → nested loops (Bubble, Selection)
- **O(n log n)** → divide & conquer (Merge, Quick)
- **O(d · n)** → digit-based (Radix)

---

## 7. MCQ Quick Facts (MEMORIZE)

✅ Always O(n²): Selection Sort  
✅ Best for nearly sorted data: Insertion Sort  
✅ Stable sort: Merge Sort  
✅ Fastest in practice: Quick Sort  
✅ Non-comparison sort: Radix Sort  
✅ Comparison lower bound: Ω(n log n)

---
