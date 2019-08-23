require 'pry'

def sort_array_asc(array)
  array.sort
end 

def sort_array_desc(array)
  array.sort.reverse
end 

def sort_array_char_count(array)
  array.sort do |char1, char2|
    char1.length <=> char2.length
  end 
end 

def swap_elements(array)
  new_array = array.collect{|a| a}
  array.each_with_index do |element, index|
    if index == 1 
      new_array[2] = element
    elsif index == 2
      new_array[1] = element
    end
  end
  new_array
end 

def reverse_array(array)
  new_array = array.collect{|a| a}
  array.each_with_index{|integer, index| new_array[array.length-1 - index] = integer}
  return new_array
end

def kesha_maker(array)
  new_array = array.each{|word| word[2] = "$"}
end 

  
def find_a(array)
  array.select do |strings| 
    if strings[0] == "a" 
      strings
    end
  end 
end 

def sum_array(array)
  counter = 0
  sum = 0
  while counter < array.length do 
    sum += array[counter]
    counter +=1
  end
  return sum
end

def add_s(array)
  array.collect.with_index do |word, index|
    if index == 1 
      word
    else 
      word + "s"
    end 
  end 
end 