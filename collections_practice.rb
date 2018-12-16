def begins_with_r arr
  arr.all? do |word|
    word.start_with?("r")
  end
end

def contain_a arr
  containing_a = []
  arr.each do |word|
    if word.include?("a")
      containing_a << word
    end
  end
  containing_a
end

def first_wa arr
  arr.find do |el|
    if el[0] == "w" && el[1] == "a"
      el
    end
  end
end


def remove_non_strings arr
  new = []
  arr.map { |e| return new << e if e.is_a?(String)}
  new
end

def count_elements arr
  new_arr = []
  arr.each do |e|
    index_e = new_arr.index {|h| h[:name] == e[:name]}
    puts index_e
    if index_e == nil
      new_arr << {count: 1, name: e[:name]}
    else
      new_arr[index_e][:count] += 1
    end
  end
  new_arr
end

def merge_data(keys, data)
  final_array = []
  keys.each do |hash|
    final_array << hash.merge(data[0][hash[:first_name]])
  end
  final_array
end

def find_cool arr
  final_array = []
  arr.each do |hash|
    if hash[:temperature] == "cool"
      final_array << hash
    end
  end
  final_array
end


def organize_schools schools
  sorted_hash = {}
  schools.each do |key, val_hash|
    if sorted_hash.key?(val_hash[:location])
      sorted_hash[val_hash[:location]] << key
    else
      sorted_hash[val_hash[:location]] = [key]
    end
  end
  sorted_hash
end
