function num_misclassified = misclassified(X, y, theta)
  % computes num_misclassified using 0/1 misclassification
  % num_misclassified will add bias units
  [m n] = size(X);
  X_bias = [ones(m, 1) X];

  predict_pos = sigmoid(X_bias*theta) >= 0.5;
  num_misclassified = sum(predict_pos ~= y);

end
