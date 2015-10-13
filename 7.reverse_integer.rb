# @param {Integer} x
# @return {Integer}
def reverse(x)
    max = (2 ** 31)
    s = x.to_s.reverse.to_i
    s = x < 0 ? -s : s
    s = max < s.abs ? 0 : s
end