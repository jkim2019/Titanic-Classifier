function normVec = normalize(someVec)
  % sets mean to 0, divides each value by standard deviation
  % ignores all NaN values in someVec
  normVec = (someVec - nanmean(someVec))/nanstd(someVec)
end
