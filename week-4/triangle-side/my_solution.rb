# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
	if 	a == 0 || b == 0 || c == 0
		p false
	elsif a > b && a > c && c**2 + b**2 == a**2
  		p true
  	elsif b > a && b > c && c**2 + a**2 == b**2
  		p true
  	elsif c > b && c > a && a**2 + b**2 == c**2
  		p true
  	elsif a == b && b == c
  		p true
  	elsif a == b && a + b > c 
  		p true
  	elsif a == c && a + c > b 
  		p true
  	elsif c == b && c + b > a
  		p true
  	else
  		p false
  	end
end