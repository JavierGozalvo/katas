def get_count(input_str)
  
    arr = input_str.chars
    counter = 0
    
    arr.each do |char|
      counter+=1 if char.match?(/[aeiou]/)
    end
    
    counter
    
end

p get_count("poldo aprende a programar")