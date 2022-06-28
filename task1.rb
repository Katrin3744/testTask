def two_max_elements(mass)
  mass.sort.reverse.first(2)
end

def two_min_elements(mass)
  mass.sort.first(2)
end

two_max_elements([1, 2, 12, 34, 35, 6, 0, 34, 122, 124, 789, 999, 33, 54, 763, 893])
two_min_elements([1, 2, 12, 34, 35, 6, 0, 34, 122, 124, 789, 999, 33, 54, 763, 893])
