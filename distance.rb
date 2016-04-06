class String
  def is_integer?
    self.to_i.to_s == self
  end

  # Validation of the coordinates for a point in two-dimensional space
  def valid_point?
    if /; /.match(self)
      point = self.split(/; /)
      x = point[0]
      y = point[1]
      /; /.match(self) && x.is_integer? && y.is_integer?
    else
      false
    end
  end
end


print "You are about to calculate the distance between two points in 2-D space.
Insert the coordinates of the points, divided by semicolon and space like here: 'x; y'
First point: "
a = gets.chomp

until a.valid_point?
  print "Please make sure that the coordinates are integers divided by semicolon and space.
First point: "
  a = gets.chomp
end

print "Second point: "
b = gets.chomp

until b.valid_point?
  print "Please make sure that the coordinates are integers divided by semicolon and space.
Second point: "
  b = gets.chomp
end

def distance(a, b)
  a = a.split(/; /)
  b = b.split(/; /)
  x1, y1, x2, y2 = a[0].to_i, a[1].to_i, b[0].to_i, b[1].to_i
  ac = y1 - y2
  bc = x2 - x1
  d = Math.sqrt(ac*ac + bc*bc)
  puts "The distance between the given points is #{d}"
end

distance(a, b)