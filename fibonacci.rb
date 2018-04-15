def fib(n)
  arr = [0,1]
  n.times {|i| arr << arr[i] + arr[i+1] }
  return nil if n < 1 else arr[0..n-1]
end

p fib(0)
p fib(1)
p fib(2)
p fib(3)
p fib(4)


def fib_rec(n)
  if n <= 2 then return n == 2  ? [0,1] : [0] end
 
  fib_rec(n - 1) << (fib_rec(n - 1)[-1] + fib_rec(n - 1)[-2])
end
p fib_rec(0)
p fib_rec(1)
p fib_rec(2)
p fib_rec(3)
p fib_rec(4)


