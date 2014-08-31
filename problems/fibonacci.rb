# O(fib(n)) or 2^n
@cache = {}

def fib(n)
  
  return 1 if n <= 2

  if @cache.has_key?(n)
    return @cache[n]
  else
    @cache[n] = fib(n - 1) + fib(n - 2)
  end
  
end

# ===========================

# def it_fib(n)
#   return 1 if n <= 2
#   x = 1
#   y = 1
#   (3..n).each do |_|
#     y, x = x + y, y
#   end
#   y
# end