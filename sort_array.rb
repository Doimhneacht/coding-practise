require_relative 'get_input.rb'

def sort_array(n)
  # Sort array descending
  list = Array.new
  print "Array:"
  n.times { elem = rand(100); print ' ', elem.to_s; list <<  elem }
  print("\n")
  i = 0
  begin
    if list[i] < list[i+1]
      a = list[i]
      list[i] = list[i+1]
      list[i+1] = a
      i = 0
    else
      i += 1
    end
  end while i < n-1
  print "Descending array:"
  list.each {|i| print ' ', i}
  print "\n"
end

sort_array(Input.get_n)