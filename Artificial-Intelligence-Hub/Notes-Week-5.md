# Week 5 — Probability

1. Bayes' Rule
\[
P(H|E)=\frac{P(E|H)P(H)}{P(E)}
\]

- Prior: probability before evidence.
- Likelihood: probability of evidence given hypothesis.
- Evidence: overall probability of the observation.
- Posterior: updated probability after evidence.
2. Naive Bayes
- Probabilistic classification algorithm.
- Assumes conditional independence of features given the class.
- Uses class priors and feature likelihoods.
- Predicts the class with the highest posterior probability.
- Bernoulli: binary features.
- Multinomial: counts.
- Gaussian: continuous features.
- Laplace smoothing prevents zero likelihoods.
3. Hidden Markov Model (HMM)
- Models hidden states that change over time.
- Hidden states: actual unobserved conditions.
- Observations: visible measurements.
- Transition: probability of moving between states.
- Emission: probability of an observation given a state.
- Markov assumption: next state depends only on current state.
- Filtering: current state estimation.
- Prediction: future state estimation.
- Smoothing: past state estimation using future observations.
4. Fuzzy vs Probability
- Fuzzy: degree of membership in a vague concept.
- Probability: uncertainty about a defined event.
