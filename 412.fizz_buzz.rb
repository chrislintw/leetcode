# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  return [] if n.to_i == 0
  a = []
  (1..n).each do |i|
    a << i.to_s
    a[i-1] = 'Buzz' if i % 5 == 0
    a[i-1] = 'Fizz' if i % 3 == 0
    a[i-1] = 'FizzBuzz' if i % 15 == 0
  end
  a
end