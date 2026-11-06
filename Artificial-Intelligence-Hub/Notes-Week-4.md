Week 4 — Fuzzy Logic
1. Fuzzy Logic
- Handles gradual concepts rather than only True/False.
- Membership degree ranges from 0 to 1.
- Membership is NOT probability.
2. Membership Functions
- Map numerical inputs to membership degrees.
- Triangular: parameters (a, b, c).
- Trapezoidal: parameters (a, b, c, d).
- Gaussian: smooth bell-shaped curve.
3. Fuzzification

- Converts crisp numerical inputs into fuzzy membership degrees.

4. Rule-Based Reasoning
- Uses IF–THEN rules.
- AND: usually minimum.
- OR: usually maximum.
- NOT: \(1-\mu\).
- Firing strength: activation degree of a rule.
5. Mamdani
- Consequent is a fuzzy set.
- Uses implication and aggregation.
- Requires defuzzification, e.g. Centroid.
6. Sugeno
- Consequent is a constant or mathematical function.
- Combines outputs using weighted average.
- Does not require output fuzzy-set defuzzification.
7. Defuzzification
- Converts fuzzy output into one crisp numerical value.
- Centroid calculates the center of the aggregated area.
8. Fuzzy Control Surface
- Maps inputs to an output.
- Example: Temperature + Humidity → Fan Speed.
- A good surface should be smooth, continuous, monotonic when intended, and sufficiently sensitive.
