function sexVec = computeSex(sexText)
  % computeSex takes a vector with string entries equal to either 'male', 'female',
  % or empty.
  % sexVec is a vector of size sexText, except it contains 0 for males, 1 for females,
  % and 3 for empty. Comparisons are case insensitive.
  % sexVec will hold a value of -1 for any entries that are not female, male, or empty.

  [m n] = size(sexText)
  sexVec = NaN(m, n)
  
  for index = 1:m
    if strcmpi(sexText(index), 'female')
      sexVec(index) = 1

    elseif strcmpi(sexText(index), 'male')
      sexVec(index) = 0

    elseif strcmpi(sexText(index), '')
      sexVec(index) = 3

    else
      sexVec(index) = -1
    end
  end
end
