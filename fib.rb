def recursive_fib(n)
  return n if n <= 1
  recursive_fib(n-1) + recursive_fib(n-2)
end

def iterative_fib(n)
  return n if n <= 1
  num1 = 0
  num2 = 1
  (n-1).times do 
    swap = num1 + num2
    num1 = num2
    num2 = swap
  end
  return num2
end

#puts iterative_fib(1)
#puts iterative_fib(3)
#puts iterative_fib(5)
#puts iterative_fib(35)

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end