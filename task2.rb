def get_keys_mass(mass)
  keys_mass = []
  mass.each { |hash| keys_mass.push(*hash.keys) }
  keys_mass
end

def get_values_mass(mass)
  values_mass = []
  mass.each { |hash| values_mass.push(*hash.values) }
  values_mass
end

def sum_values(mass)
  get_values_mass(mass).sum
end

arr = [{ a: 1, b: 2, c: 45 }, { d: 123, c: 12 }, { e: 87 }]
get_keys_mass(arr)
get_values_mass(arr)
sum_values(arr)
