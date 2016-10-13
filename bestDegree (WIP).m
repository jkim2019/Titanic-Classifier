function [degree cost] = bestDegree(X_train, y_train, X_cv, y_cv)
  % graph cost (J_train and J_cv) vs. polynomial degree, and obtain
  % optimal degree that minimizes cost
  % lambda is set to zero by default
  lambda = 0;
  best_cost = 20;


  for cur_degree = 1:10
    switch cur_degree
      case 1
        [cur_theta cur_cost] = gradDescent(X_train, y_train, lambda)
        
