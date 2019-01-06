require 'pry'

# your code goes here
def begins_with_r(tools)
  x = 0
  y = true
  while x<tools.length
    if tools[x].start_with?("r")
      y = true
    else
      y = false
      break
    end
    x += 1
  end
  y
end

def contain_a(elements)
  x = 0
  y = []
  while x<elements.length
    if elements[x].include?("a")
      y.push(elements[x])
    end
    x += 1
  end
  y
end

def first_wa(array)
  x = 0
  while x<array.length
    if array[x].instance_of? String
      if array[x].start_with?("wa")
        return array[x]
        break
      end
    end
    x += 1
  end
end

def remove_non_strings(array)
  x = 0
  new = []
  while x<array.length
    if array[x].instance_of? String
      new.push(array[x])
    end
    x += 1
  end
  new
end

def count_elements(array)
  array.each do |x|
    x[:count] = 0
    name = x[:name]
    array.each do |hash|
      if hash[:name] == name
        x[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  data[0].map do |name, info|
    new = {}
    keys.each do |new_atts|
      if new_atts[:first_name] == name
        new = info.merge(new_atts)
      end
    end
    new
  end
end

def find_cool(cool)
  arr = []
  cool.each do |x|
    if x[:temperature] == "cool"
      arr << x
    end
  end
  arr
end

def organize_schools(schools)
  skools = {}
  schools.each do |name, info|
    x = info[:location]
    skools[x] ||= []
    skools[x] << name
  end
  skools
end

schools = {
  "flatiron school bk" => {
    :location => "NYC"
  },
  "flatiron school" => {
    :location => "NYC"
  },
  "dev boot camp" => {
    :location => "SF"
  },
  "dev boot camp chicago" => {
    :location => "Chicago"
  },
  "general assembly" => {
    :location => "NYC"
  },
  "Hack Reactor" => {
    :location => "SF"
  }
}

organize_schools(schools)
