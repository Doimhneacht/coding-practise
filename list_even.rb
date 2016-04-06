require_relative 'get_input.rb'

def list_even(n)
  print "Even numbers are"
  for i in 1..n
    print " ", i if i % 2 == 0
  end
  print "\n"
end

list_even(Input.get_n)