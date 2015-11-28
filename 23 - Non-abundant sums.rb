def divisors(x)
  arr=Array.new
  (1..(x**0.5)).each do |number|
    arr << number if x%number==0
    arr << x/number if x%number==0 unless x / number == x
  end
  arr.sort.uniq
end


def perfect?(x)
  return false if x != divisors(x).reduce(:+)
  return true
end

def abundant?(x)
  return true if x < divisors(x).reduce(:+)
  return false
end

abundant_arr = (12..28123).select {|x| abundant?(x)}

hola = []

   abundant_arr.each do |y|
     abundant_arr.each do |z|
       hola << y+z
     end 
   end

hola = hola.sort.uniq.select {|x| x < 28123}

p divisors(18)

#final_arr=[]
#(1..28123).each do |x|
#  final_arr << x unless hola[0,x].include?(x)
#end

#p final_arr.reduce(:+)

