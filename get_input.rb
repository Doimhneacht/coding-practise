print "Enter a natural number: "
n = gets.chomp.to_i

until n.integer?
  print "Please make sure that your number is natural\nand try again: "
  n = gets.chomp.to_i
end