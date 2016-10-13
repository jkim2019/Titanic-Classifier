function embarkVec = computeCity(embarkCell)
  % computeCity accepts a series of cells (m x 1) filled with cities:
  % C = Cherbourg, Q = Queenstown, S = Southampton
  % returns embarkVec, where each entry is translated as such:
  % Cherbourg = 0, Queenstown = 1, Southampton = 2
  % embarkVec will contain NaN if the corresponding entry in embarkCell does not
  % contain one of: {'C', 'Q', 'S'}

  [m n] = size(embarkCell)
  embarkVec = NaN(m, n)

  for i = 1:m
    if strcmpi(embarkCell(i), 'C')
      embarkVec(i) = 0

    elseif strcmpi(embarkCell(i), 'Q')
      embarkVec(i) = 1

    elseif strcmpi(embarkCell(i), 'S')
      embarkVec(i) = 2
    end
  end
end
