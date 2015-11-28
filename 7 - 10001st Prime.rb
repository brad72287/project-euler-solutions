def prime?(x)
  (2..(x**(0.5))).each do |number|
    return false if x%number==0
  end
  return true 
end

arr=[]
x=0
y=1
while x <= 10001
  if prime?(y)
    arr << y if prime?(y)
    x+=1
  end
  y+=1
end

p arr.last