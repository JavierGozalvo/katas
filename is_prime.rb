#You can assume you will be given an integer input.
#You can not assume that the integer will be only positive. You may be given negative numbers as well ( or 0 ).
#NOTE on performance: There are no fancy optimizations required, but still the most trivial solutions might time out. 
#Numbers go up to 2^31 ( or similar, depending on language ). 
#Looping all the way up to n, or n/2, will be too slow.

# Test if number is prime
def isPrime(num)

    return false if num < 2
    for n in 2..(num-1)
        if num % n == 0
            return false
        end
    end
    return true

end

#Funciona, pero la pasarle numeros muy grandes el PC podría quedarse sin memoria, es lo que ocurre en Codewars#

#Una solución más depurada y Rubyera#
def isPrimev2(num)
    (2..num-1).none?{|e| num % e == 0}
end

#Otra solución sería importar -> 'prime' y utilizar el metodo .prime?#
require 'prime'
def isPrimePro(num)
    num.prime?
end
#Asi consumiriamos menos recursos y sería más eficiente#


#Algunos tests#
p "#-----isPrime-----#"

p isPrime(6) ##should be false
p isPrime(7) ##should be true
p isPrime(20) ##should be false

p "#-----isPrimev2-----#"

p isPrimev2(6) ##should be false
p isPrimev2(7) ##should be true
p isPrimev2(20) ##should be false

p "#-----isPrimePro-----#"

p isPrimePro(6) ##should be false
p isPrimePro(7) ##should be true
p isPrimePro(20) ##should be false