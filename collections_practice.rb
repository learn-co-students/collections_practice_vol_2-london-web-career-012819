require"pry"
def begins_with_r(array)
  new_array = []
  array.collect do |element|
    if element.start_with?("r")
      new_array << element
    else return false
    end
  end
return true
end

def contain_a(array)
  new_array = []
  array.collect do |element|
    if element.include?("a")
      new_array << element
    end
  end
return new_array
end

def first_wa(array)

  array.find do |element|
    if element[0]=="w" && element[1]=="a"

      return element
    end
  end

end

def remove_non_strings(array)
new_array = []
  array.each do |element|
if element.is_a?(String)
  new_array << element
  end
end
return new_array

end

def count_elements(array)
  array.each do |original_hash|
     original_hash[:count] = 0
     name = original_hash[:name]
    array.each do |hash|
       if hash[:name] == name
         original_hash[:count] += 1
       end
     end
   end.uniq
end

def merge_data(key, data)
  data[0].map do |name, prop_hash|
    new_prop_hash = {}
    key.each do |new_attr_hash|
      if new_attr_hash[:first_name] == name
        new_prop_hash = prop_hash.merge(new_attr_hash)
      end
    end
    new_prop_hash
  end
end

def find_cool(cool)
output_array = []
  cool.each do |element|
    if element[:temperature]=="cool"
      output_array.push(element)
    end
  end
return output_array
end

def organize_schools(schools)
  school_by_location = {}
  schools.each do |school, info|
    location = info[:location]
    if school_by_location[location]
      school_by_location[location] << school
    else
      school_by_location[location]=[]
      school_by_location[location] << school
    end
  end
  return school_by_location
end
