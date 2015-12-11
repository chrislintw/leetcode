# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  s, e = 1, n
  while
    m = (s + e) /2
    if is_bad_version(m)
      is_bad_version(m - 1) ? (e = m - 1) : ( return m)
    else
      s = m +1
    end
  end
end