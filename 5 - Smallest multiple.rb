def divby?(x)
  (11..20).each do |n|
    return false if x%n !=0
  end
  return true
end

x=1
while divby?(x) == false 
 x+=1
end

p x