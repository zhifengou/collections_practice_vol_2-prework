def begins_with_r(arr)
  num=0
  arr.each do |each|
    if each[0]=="r"
      num+=1
    end
  end
    if num==arr.size
      return true 
    else 
      return FALSE
    end
end

def contain_a (arr)
  newArr=[]
  arr.each do |each|
    if each.include?("a")
      newArr << each
    end
  end
  newArr
end
    
def first_wa (arr)
  newArr=[]
  arr.each do |each|
    if each[0]=="w"&& each[1]=="a"
      newArr << each
    end
  end
  newArr[0]
end
    
def remove_non_strings (arr)
  newArr=[]
  arr.each do |each|
    if each.is_a?(String)
      newArr << each
    end
  end
  newArr
end

def count_elements(arr)
  newArr=[]
  arr.each do |each|
    each[:count]=1 
    if newArr.include?(each)==true
      newArr.each do |each|
      each[:count]+=1 
    end
    elsif newArr.include?(each)==false
      newArr << each
  end
  end
  newArr
end
    
    
def merge_data(keys, data)
  merged = []
  keys.each do |each|
    data.first.map do |key,value|
      if each.values[0]==key
        merged << each.merge(value)
      end
    end
  end
  keys.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
  merged
end

  
  
  