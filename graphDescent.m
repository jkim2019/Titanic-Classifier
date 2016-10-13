function [theta cost] = graphDescent(filename)

  % graph gradient descent - cost vs iteration
  % training examples and y must be in a matrix, where y is the last column
  % data matrix must be named 'XY_graphDescent.mat'
  % function will add bias units

  % ~~~~~~~~~~~ Loading Data from normXy into matrix X and vector y ~~~~~~~~~~~
  Xy = importdata(filename);
  [m n] = size(Xy);

  X = Xy( : , [1:(n - 1)] );
  y = Xy( : , n );
  X = [ones(m, 1) X];
  [m n] = size(X);
  % ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  % setting initial values
  J_delta = 20;
  current_theta = zeros(n,1);
  iteration = 1;
  all_costs = []

  % ALPHA VALUE - set optimally
  alpha = 0.5;

  % LAMBDA VALUE - set optimally
  lambda = 0;

  fprintf('\nlearning rate: alpha = %f', alpha);
  fprintf('\nProgram paused. Press enter to continue.\n');
  pause;

  % set up figure
  figure; hold on;

  [current_cost grad] = costFunctionReg(current_theta, X, y, lambda);

  while J_delta > 1e-6 && iteration <= 400
    all_costs = [all_costs; current_cost]
    % plot iteration vs current cost
    plot(iteration, current_cost, 'k*', 'LineWidth', 1, 'MarkerSize', 5);
    iteration = iteration + 1;

    % update theta, calculate new cost, calculate J_delta
    current_theta = current_theta - alpha*grad;
    [new_cost grad] = costFunctionReg(current_theta, X, y, lambda);
    J_delta = current_cost - new_cost;
    current_cost = new_cost;

  end

  theta = current_theta
  cost = current_cost
  fprintf('\nProgram paused. Press enter to continue.\n');
  pause;

end
