def countdown(x)
  puts x
  countdown(x-1) if x > 0
end


def fizzbuzz(n)
  # for n in 0..n
  fizzbuzz(n-1) if n > 1 
    if n % 3 == 0 && n % 5 == 0
      puts 'FizzBuzz'
    elsif n % 3 == 0
      puts 'Fizz'
    elsif n % 5 == 0
      puts 'Buzz'
    else
      puts n
    end
end


def exp(a, b)
  return 1 if b == 0
  a * exp(a, b - 1) 
end


  # if b == 0
  #   1
  # else
  #   a * exp(a, b - 1) 
  # end