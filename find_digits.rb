=begin
given a number n, how many times does it divide evenly by one of its digits
=end


def find_digits(n)
  runner = n
  count = 0

  while runner != 0
    digit = runner % 10
    unless digit == 0
      count += 1 if n % digit == 0
    end
    runner /= 10
  end
  count
end