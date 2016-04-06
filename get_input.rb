class String
  def is_natural?
    number = self.to_i
    number > 0 && number.to_s == self
  end
end

class Input
  def self.get_n
    print "Enter a natural number: "
    n = gets.chomp

    until n.is_natural?
      print "Please make sure that your number is natural and try again: "
      n = gets.chomp
    end

    n.to_i
  end
end
