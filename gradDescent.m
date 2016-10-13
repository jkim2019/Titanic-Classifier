function [theta cost] = gradDescent(X, y, lambda)

  [m n] = size(X)
  initial_theta = zeros(n + 1,1)
  % add bias unit
  X_bias = [ones(m, 1) X]

  [initial_J initial_grad] = costFunctionReg(initial_theta, X_bias, y, lambda)


  % optimize using fminunc
  %  Set options for fminunc
  options = optimset('GradObj', 'on', 'MaxIter', 400);

  %  Run fminunc to obtain the optimal theta
  %  This function will return theta and the cost
  [theta, cost] = ...
  	fminunc(@(t)(costFunctionReg(t, X_bias, y, lambda)), zeros(size(X_bias, 2), 1), options);

  fprintf('Cost with initial_theta (set to zeroes(n + 1, 1)): %f\n', initial_J)
  fprintf('Initial Gradient: %f\n', initial_grad)

end
