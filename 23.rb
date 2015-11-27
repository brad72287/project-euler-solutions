def divisors(x)
  arr=Array.new
  (1..(x/2)).each do |number|
    arr << number if x%number==0
  end
  arr
end

def perfect?(x)
  return false if x != divisors(x).reduce(:+)
  return true
end

def abundant?(x)
  return true if x < divisors(x).reduce(:+)
  return false
end

abundant_arr = (12..1000).select {|x| abundant?(x)}

def sum_of_two_abundant?(x, arr)
   arr.each do |y|
     arr.each do |z|
       return true if x == y+z
     end 
   end
  return false
end

p (1..28123).select {|x| !sum_of_two_abundant?(x, abundant_arr)}.reduce(:+) 