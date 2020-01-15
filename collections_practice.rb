def begins_with_r(array)
  if array.all? {|i| i.start_with?("r") }
    return true
  else
    return false
  end
end

def contain_a(array)
  array.select { |i| i.include?("a") }
end

def first_wa(array)
  array.find{ |i| i[0] == "w" }
end

def remove_non_strings(array)
  array.delete_if { |i| i.class != String }
end

def count_elements(array)
  array.sort_by do |hash| 
    hash[:name]
  end
  
  array_w_count = []
  count = 1;
  prev = array[0]
   
  for i in 1..(array.size-1)
    if(array[i] == prev)
        count += 1
    else
      array_w_count << prev.merge({:count => count})
      prev = array[i]
      count = 1
    end
  end
  array_w_count << prev.merge(:count => count)
  array_w_count
end

def merge_data(keys, data)
   merged = []
   keys.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
   merged
end

def find_cool(cool)
  cool.select { |i| i.any? { |k,v| v == "cool" } }
end

def organize_schools(schools)
     locations_hash = {}
     schools.collect {|k,v| locations_hash[v[:location]] = []}
     locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
 end