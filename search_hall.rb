# This method accepts an array, which describes a hall
# where 0 means empty space and 1 means key, and
# a coordinate of the searcher (index in that array).
# The aim of the method is to calculate the distance between
# the searcher and the key.

def search_hall(m, x)
  if m[x] == 1
    0
  elsif (n = search_left(m, x)).nil?
    n = search_right(m, x)
    n - x
  else
    x - n
  end
end

def search_left(m, x)
  if m[x] == 1
    x
  elsif x == 0
    nil
  else
    search_left(m, x-1)
  end
end

def search_right(m, x)
  if m[x] == 1
    x
  elsif x == m.length
    nil
  else
    search_left(m, x+1)
  end
end

m = [ 0, 1, 0, 0, 0, 0 ]
puts search_hall(m, 4)

# Another way

def hall_key(m, x)
  if m.last == 1
    n = m.length - 1
    if n > x
      n - x
    else
      x - n
    end
  else
    m.pop
    hall_key(m, x)
  end
end