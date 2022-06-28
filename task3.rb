def create_hash_from_arr(mass)
  hash_of_element_count = Hash.new
  mass.each do |element|
    hash_of_element_count.key?(element) ? hash_of_element_count[element] += 1 : hash_of_element_count[element] = 1
  end
  hash_of_element_count
end

arr = [nil, 2, :foo, "bar", "foo", "apple", "orange", :orange, 45, nil,
       :foo, :bar, 25, 45, :apple, "bar", nil]
create_hash_from_arr(arr)
