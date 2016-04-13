def a_prog(a,d,n)
  if n == 1
    "#{a}"
  else
    "#{a}, #{a_prog(a+d,d,n-1)}"
  end
end