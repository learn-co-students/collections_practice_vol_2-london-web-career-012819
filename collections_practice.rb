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
array.group_by(&:itself).map{|word, value| word.merge(count: value.length)}
end

def merge_data(keys, data)
  new_hash = {}
  data.each do |name, value|
  keys.each do |key, value|
    if name == value
      new_hash = data.merge!keys
    end
  end
end
new_hash
end
