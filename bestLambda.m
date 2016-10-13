function [optimal_lambda optimal_cost] = bestLambda(X, y)
  % chooses an optimal lambda value between 0 and 30
  [junk min_cost] = gradDescent(X, y, 0)
  min_lambda = 0

  for lambda = [0.1,0.3,1,3,6,9,12,15,18,21,24,27,30]
    [junk cost] = gradDescent(X, y, lambda)
    if cost < min_cost
      min_cost = cost
      min_lambda = lambda
    end
  end

  optimal_lambda = min_lambda
  optimal_cost = min_cost
end
