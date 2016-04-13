# Solution for http://codingbat.com/prob/p183649
def bunny_ears(bunnies)
  if n == 0
    0
  else
    2 + bunny_ears(bunnies-1)
  end
end