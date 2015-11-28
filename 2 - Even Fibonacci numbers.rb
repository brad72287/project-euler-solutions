arr=[1,2]
x=0
while arr[x]<4000000
  next_number = arr[x]+arr[x+1]
  arr << next_number
  x+=1
end

evens = arr.select {|x| x.even?}

p evens.reduce(:+)