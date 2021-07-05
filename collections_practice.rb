def begins_with_r(array)
array.all? { |word| word[0] == ("r")}
end

def contain_a(array)
  array.select { |word| word.include?("a")  }
end

def first_wa(array)
  new_arr = []
array.collect do |word|
  new_arr << word if word[0] == "w" && word[1] == "a"
end
new_arr.first
end

def remove_non_strings(array)
  array.delete_if {|x| x.class != String }
end

def count_elements(array)
  array.each do |hash|
      hash[:count] = 0
      name = hash[:name]
      array.each do |hash2|
        if hash2[:name] == name
          hash[:count] += 1
        end
      end
    end.uniq
  end

def merge_data(key, data)
  data[0].map do |name, hash|
     new_hash = {}
     key.each do |value|
       if value[:first_name] == name
         new_hash = hash.merge(value)
       end
     end
     new_hash
  end
end

def find_cool(array)
  container = []
 array.each do |element|
   container << element if element[:temperature] == "cool"
 end
 container
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
