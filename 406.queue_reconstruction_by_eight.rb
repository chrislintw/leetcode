## 406. Queue Reconstruction by Height

# Suppose you have a random list of people standing in a queue. Each person is described by a pair of integers (h, k), where h is the height of the person and k is the number of people in front of this person who have a height greater than or equal to h. Write an algorithm to reconstruct the queue.

# Note:
# The number of people is less than 1,100.

# Example

# Input:
# [[7,0], [4,4], [7,1], [5,0], [6,1], [5,2]]

# Output:
# [[5,0], [7,0], [5,2], [6,1], [4,4], [7,1]]

# @param {Integer[][]} people
# @return {Integer[][]}


class Queue
  # 1. 依照people[0]由高到小排序 ， 一樣時依照 people[1] 由小到大排序
  # 2. 依序插入 k 值的位置

  def reconstruct_queue(people)
    people.sort!{ |x,y| x[0] == y[0] ? x[1] <=> y[1] : y[0] <=> x[0] }
    ans = []
    # people.each { |person| ans.insert(person[1],person) }
    people.size.times { |i| ans.insert(people[i][1],people[i]) }
    ans
  end
end
Queue.new.reconstruct_queue([[7,0], [4,4], [7,1], [5,0], [6,1], [5,2]])


