require_relative 'get_input.rb'

def sort_array_bubble(n)
  list = Array.new
  print "Array of #{n} numbers:"
  n.times { elem = rand(100); print ' ', elem.to_s; list << elem }
  print "\n"
  # Sort the array using bubble method
  for i in 0...n-1
    m = i
    for j in i+1...n
      if list[m] < list[j]
        m = j
      end
    end
    unless m == i
      a = list[m]
      list[m] = list[i]
      list[i] = a
    end
  end
  print "Array sorted descending:"
  list.each { |i| print ' ' + i.to_s }
  print "\n"
end

sort_array_bubble(Input.get_n)