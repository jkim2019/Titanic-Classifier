function emptyIndices = detectNaN(someVec)
  % detectEmpty returns a vector filled with the indices of NaN entries in a
  % vector.

  [m n] = size(someVec)
  emptyIndices = []
  
  for i = 1:m
    if isnan(someVec(i))
      emptyIndices = [emptyIndices i]
    end
  end

end
