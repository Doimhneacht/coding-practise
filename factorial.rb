print "Write a non-negative integer: "
n = gets.chomp
until n.to_i.to_s == n && n.to_i > -1
  print "Please write a NON-NEGATIVE INTEGER: "
  n = gets.chomp
end
n = n.to_i

def factorial(n)
  f = 1
  for i in 2..n
    f = f * i
  end
  puts "Factorial of #{n} is #{f}"
end

factorial(n)

