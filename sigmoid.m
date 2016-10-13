function g = sigmoid(z)
  % compute sigmoid of z
  g = (1 + exp(-z)).^-1
end
