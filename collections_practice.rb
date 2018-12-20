# your code goes here
def begins_with_r(tools)
  if tools.all? {|x| x[0]=="r"}
    true
  else
    false
  end
end

def contain_a(array)
  temp = []
  array.each do |x|
    if x.include?("a")
      temp << x
    end
  end
  temp
end

def first_wa(array)
  array.each do |x|
    x = x.to_s
    if x.start_with?("wa")
      return x
    end
  end
end

def remove_non_strings(array)
  temp = []
  array.each do |x|
    if x.is_a?(String)
      temp.push(x)
    end
  end
  temp
end

# far as i know we didn't learn anything about hashes in previous lessons, so i used github to try and understand them better
def count_elements(array)
  temp_u = array.uniq
  temp_u.collect do |x|
    c = array.count(x)
    # ???
    x.merge({:count => c})
  end
end

def merge_data(keys, data)
  i = 0
  keys.collect { |key|
    data_key = key[:first_name]
    data_atts = data[0].fetch(data_key)
    i += 1
    key.merge(data_atts)
  }
end

def find_cool(array)
  array.collect { |obj|
    obj.has_value?("cool") ? obj:nil
  }.compact
end

def organize_schools(schools)
  new_schools = {}
  schools.each { |k, v|
    new_schools.has_key?(v[:location]) ? (new_schools[v[:location]] << k) : new_schools[v[:location]] = [k]
  }
  new_schools
end
