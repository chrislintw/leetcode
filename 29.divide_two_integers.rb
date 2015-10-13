# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}

INT_MIN, INT_MAX = -2147483648, 2147483647
def divide(dividend, divisor)
  if divisor == 0
    return dividend < 0 ? INT_MIN : INT_MAX
  end
  if (divisor == INT_MIN)
    return dividend == INT_MIN ? 1 : 0
  end
  a, b, index, ret = (dividend < 0 ? -dividend : dividend) , (divisor < 0 ? -divisor : divisor), 0, 0
  return 0 if a < b
  div = Array.new(32,0)
  div[0] = divisor
  while a >= b do
    a -= b
    ret += (1 << index)
    div[index] = b
    index += 1
    b = b << 1
  end
  while a >= div[0] do
    index -= 1
    if a >= div[index]
      a -= div[index]
      ret += (1 << index)
    end
  end
  return dividend ^ divisor < 0 ? -ret : (ret > INT_MAX ? INT_MAX : ret)
end