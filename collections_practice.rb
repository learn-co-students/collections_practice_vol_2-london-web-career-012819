# your code goes here
require 'pry'

def begins_with_r(array)
  array.all? { |word| word.chars.first === "r"}
end

def contain_a(array)
  array.select { |word| word.include?("a")}
end

def first_wa(array)
  array.find do |word|
    if word[0] == "w" && word[1] == "a"
      word
    end
  end
end

def remove_non_strings(array)
  array.delete_if {|x| x.class != String }
  end

def count_elements(array)
  array.uniq.each do |x|
    count = 0
    array.each do |xx|
      if xx == x
        count += 1
      end
    end
      x[:count] = count
    end
end

def merge_data(keys, data)
  keys.each do |info|
    data.each do |hash|
      info.merge!(hash[info[:first_name]])
    end
  end
  return keys
end

def find_cool(array)
  new_arr = []
  array.each do |el|
    if el[:temperature] == "cool"
      new_arr.push(el)
    end
  end
  new_arr
end

def organize_schools(hash)
  school_locs = {}
  hash.each do |school, loc_info|
    loc_info.each do |att, location|
      if school_locs[location] == nil
        school_locs[location] = [school]
      else
        school_locs[location] << school
      end
    end
  end
  school_locs
end
