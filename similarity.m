function sim = similarity(a,b)
  % similarity(a,b) returns the similarity between two vectors, a and b.
  % similarity is measured as mod(norm(a - b), sum(abs(a - b)))

  sim = mod(norm(a - b), sum(abs(a - b)))
