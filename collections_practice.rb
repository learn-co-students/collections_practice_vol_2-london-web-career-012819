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

end

def merge_data(key, data)

end

def find_cool

end

def organize_schools

end
