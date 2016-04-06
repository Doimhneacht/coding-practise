require_relative 'get_input.rb'

def list_sorted(n)
  # Sort numbers descending from the given number to 1
  print "The list is"
  n.downto(1) {|i| print " ", i}
  print "\n"
end

list_sorted(Input.get_n)