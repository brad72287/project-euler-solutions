def palindrome?(x)
  return false if x.to_s != x.to_s.reverse
  return true
end

arr=[]
(1..999).each do |x|
  (1..999).each do |y|
  arr << x*y
  end
end

p arr.select {|x| palindrome?(x)}.sort