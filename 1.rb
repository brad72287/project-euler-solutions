bla = (1..999).select {|x| x%5==0 || x%3==0}
p bla.reduce(:+)