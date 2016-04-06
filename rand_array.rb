require_relative 'get_input.rb'

def rand_array(n)
  # Create an array of random numbers not exceeding 100
  list = Array.new
  n.times { list << rand(100) }
  print "The random array of #{n} numbers is"
  list.each {|i| print ' ', i}
  print "\n"
end

rand_array(Input.get_n)