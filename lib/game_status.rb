# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]


def won?(board)

empty = 0
counter = 0
 WIN_COMBINATIONS.each do |intArr|
  i1 = board[intArr[0]]
  i2 = board[intArr[1]]
  i3 = board[intArr[2]]

  if i1 != " " && i2 != " " && i3 != " "

 if i1 == i2 && i2 == i3 && i1 == i3

return intArr
 else
  counter += 1
  if counter == 8
    return false
    counter == 0
  end
 end
 else
   empty += 1
end
if empty == 8
  return false
end
end
end


def full?(board)
  board.all? do |element|
 element == "X" || element == "O"
end
end

def draw?(board)
if full?(board) == true && won?(board) == false
  return true
else
  return false
end
end

def over?(board)
puts  draw?(board)
puts won?(board)
puts full?(board)


if draw?(board) == false && won?(board) == false && full?(board) == false
  return false
elsif full?(board) == true && won?(board) != false
  return true
elsif full?(board) == false && won?(board) != false
return false
elsif draw?(board) == true
  return true
end

end
