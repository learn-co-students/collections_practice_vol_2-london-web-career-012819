def begins_with_r(array)
  array.each do |x|
    if x[0] != "r"
      return false 
    end 
  end 
  true 
end


def contain_a(array)
new = []
  array.each do |x|
    if x.include?('a')
      new.push(x)
    end 
  end 
new 
end 


def first_wa(array)
  array.each do |x|
    if x[0..1].include?("wa")
      return x 
    end 
  end 
end 


def remove_non_strings(array)
  array.select { |x| x.instance_of?(String) }
end 


def count_elements(array)
  array.count
end we havn't covered this yet 


def merge_data(array)
  
end 
      

def find_cool(array)
  
end 