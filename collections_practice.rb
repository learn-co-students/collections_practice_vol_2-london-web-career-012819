# your code goes here
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

end

def merge_data(keys, data)

end
