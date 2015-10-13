# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  return s if num_rows <= 1 || num_rows >= s.length
  max = num_rows * 2 - 2
  string = ""
  num_rows.times do |i|
    k = i
    j = 0
    begin
      j += 1
      string = "#{string}#{s[k]}"
      now = (j % 2) == 1 ? (max - i*2) : (i*2)
      now = max if now == 0
      k += now
    end while !s[k].nil?
  end
  string
end