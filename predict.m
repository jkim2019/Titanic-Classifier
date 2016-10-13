function [accuracy cost] = predict(X, y, theta)
  % check accuracy by using X and theta to predict y
  % function will add bias units
  
  [m n] = size(X);
  X_bias = [ones(m, 1) X];
  prediction = sigmoid(X_bias*theta) >= 0.5;

  accuracy_vec = prediction == y;
  accuracy = sum(accuracy_vec)/(size(accuracy_vec, 1));

  [cost junk] = costFunctionReg(theta, X_bias, y, 0);
end
