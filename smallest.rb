require_relative 'get_input.rb'

def smallest(n)
  # Detects the smallest number out of a created random array
  list = Array.new
  print "Array of #{n} numbers:"
  n.times { elem = rand(100); print " ", elem.to_s; list << elem }
  print "\n"
  i = 0
  m = 1
  begin
    if list[i] < list[i+m]
      m += 1
    elsif list[i] > list[i+1]
      i = i+1
    elsif list[i] > list[i+m]
      m = 1
      i = i+m
    end
  end while i < n-1 && m < n-i
  smallest = list[i]
  puts "The smallest number is #{smallest}"
end

smallest(Input.get_n)