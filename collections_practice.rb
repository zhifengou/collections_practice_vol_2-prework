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
  array=Array.new 
  data.collect do |data_item| 
    data_item.each do |key1, value1| 
      keys.each do |key|
        key.each do |key2, value2|
          if key1 == value2 
            array << key.merge(value1)
          end
        end
      end
    end
  end
  array
end

  
  
  