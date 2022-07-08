#You live in the city of Cartesia where all roads are laid out in a perfect grid. 
#You arrived ten minutes too early to an appointment, so you decided to take the opportunity to go for a short walk. 
#The city provides its citizens with a Walk Generating App on their phones -- everytime you press the button it sends you an 
#array of one-letter strings representing directions to walk (eg. ['n', 's', 'w', 'e']). You always walk only a single block 
#for each letter (direction) and you know it takes you one minute to traverse one city block, so create a function that will 
#return true if the walk the app gives you will take you exactly ten minutes 
#(you don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise.

#Solucion Mia#
def is_valid_walk(walk)
    v_count = 0
    h_count = 0

    min = walk.count == 10 ? true : false 

    if min == true
        walk.each do |step|
            v_count+=1 if step == "n"
            v_count-=1 if step == "s"
            h_count+=1 if step == "w"
            h_count-=1 if step == "e"
        end
        (v_count == 0 && h_count == 0) ? true : false
    else false
    end
end


#SOLUCION CHULA#
def isValidWalk(walk)
    walk.count('w') == walk.count('e') and
    walk.count('n') == walk.count('s') and
    walk.count == 10
end

p is_valid_walk(["n","n","n","n","n","n","n","n","n"])

p is_valid_walk(["n"])

p is_valid_walk(["n","n","n","n","n","n","n","n","n","s"])

p is_valid_walk(["n","s","n","s","n","s","n","s","n","s"])