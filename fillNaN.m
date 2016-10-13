function prediction = fillNaN(A,b)
  % predictSim(A,b) predicts unknown values in the incomplete vector b given
  % the feature matrix A. Prediction is given by similarity of features of b
  % A should be of the form [example x feature]
  % unknown values in b should contain NaN. Vector prediction is equal to b,
  % except all NaN values are filled with predictions

  [m n] = size(A)
  prediction = b

  for value = 1:m
    if isnan(b(value))
      % establish a baseline simiilarity to compare to
      example_index = 1
      minimum_similarity = 0
      while minimum_similarity == 0
        minimum_similarity = similarity(A(example_index,:), A(value,:))
        example_index = example_index + 1
      end

      % find most similar example
      for example = 1:m
        if ~isnan(b(example))
          if similarity(A(example,:), A(value,:)) < minimum_similarity
            minimum_similarity = similarity(A(example,:), A(value,:))
            example_index = example
          end
        end
      end

      prediction(value) = prediction(example_index)
    end
  end
end
