require_relative 'get_input.rb'

def biggest(n)
  # Detects the biggest number out of a created random array
  list = Array.new
  print "Array of #{n} numbers:"
  n.times { elem = rand(100); print " ", elem.to_s; list << elem }
  print "\n"
  biggest = list[0]
  for i in 1...n
    if biggest < list[i]
      biggest = list[i]
    end
  end
  puts "The biggest number is #{biggest}"
end

biggest(Input.get_n)