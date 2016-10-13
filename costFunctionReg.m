function [J, grad] = costFunctionReg(theta, X, y, lambda)
  % function does NOT add bias unit
  [m n] = size(X);

  J = -(1/m)*(y'*log(sigmoid(X*theta)) + (1 - y)'*log(1 - sigmoid(X*theta))) + (lambda/(2*m))*(theta([2:length(theta)], [1])'*theta([2:length(theta)], [1]))
  grad = (1/m)*X'*(sigmoid(X*theta) - y);
  theta(1) = 0;
  grad = grad + (lambda/m)*theta;
end
