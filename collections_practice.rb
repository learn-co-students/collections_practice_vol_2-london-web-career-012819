# your code goes here
require "pry"
def begins_with_r(collection)
  bool = true
  collection.each do |item|
    if item[0] != "r"
      bool = false
    end
  end

  bool
end

def contain_a(collection)
  collection.select do |item|
    item.include?("a")
  end
end

def first_wa(collection)
  collection.each do |item|
    if item[0] == "w"
      return item
    end
  end
end

def remove_non_strings(collection)
  collection.select do |item|
    item.is_a? String
  end
end
#We have not covered hashes yet??
def count_elements(collection)
  count_array = []
  hash_array = []

  collection.each do |hash|

    if count_array.include?(hash[:name])
      hash_array.each do |value|
        if value[:name] == hash[:name]
          value[:count] = value[:count] + 1
        end
      end
    else
      new_hash = {}
      new_hash[:name] = hash[:name]
      new_hash[:count] = 1

      count_array << hash[:name]
      hash_array << new_hash
    end


  end

  return hash_array
end

def merge_data(keys, data)
  data[0].map do |name, info|
    new_hash = {}
    keys.each do |value|
      if value[:first_name] == name
        new_hash = info.merge(value)
      end
    end
    new_hash
  end
end

def find_cool(array)

  arr =[]
  array.each do |hash|
    if hash[:temperature] == "cool"
      arr << hash
    end
  end

  arr

end

def organize_schools(schools)

  organized_hash = {}
  schools.each do |school_name, hash|
    if organized_hash[hash[:location]] == nil
      organized_hash[hash[:location]] = [school_name]
    else
      organized_hash[hash[:location]] << school_name
    end
  end

  organized_hash

end
























#
