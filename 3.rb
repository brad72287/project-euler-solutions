def prime?(x)
  (2..(x**(0.5))).each do |number|
    return false if x%number==0
  end
  return true 
end

def prime_factors(x)
  factors=[]
  (1..(x/2)).each do |number|
    factors << number if x%number==0 && prime?(number)
  end
  factors
end

p (1..100).select {|x| prime?(x)}

p prime_factors(600851475143)