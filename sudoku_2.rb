def is_valid_sudoku(board)

   
    squares = {}
    horizontal = {}
    vertical = {}
    # location = []
    # triad_column
    board.each_with_index do |b, index|
 
        # puts index.to_s + " is: " + b.to_s

        for n in 0..8 do
      
            if b[n] == "."
                next
            end
            if b[n] == "5"
                print horizontal[n]
                puts "_______"
            end

         
            if horizontal[n]&.include?(b[n])
                return false
            elsif horizontal[n]
                horizontal[n] << b[n]
            else
                horizontal[n] = [b[n]]
            end

            if vertical[n]&.include?(b[n])
                return false
            elsif vertical[n]
                vertical[n] << b[n]
            else
                vertical[n] = [b[n]]
            end

            if squares["#{index/3}"+ "-" + "#{n/3}"]&.include?(b[n])  
                return false

            elsif squares["#{index/3}"+ "-" + "#{n/3}"]
                squares["#{index/3}"+ "-" + "#{n/3}"] << [b[n]]

            else
                squares["#{index/3}"+ "-" + "#{n/3}"] = [b[n]]

            end
         

            
        end
     
    end
  
 
    return true
end


# board_3 = [["8","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]]

board_4 = [["5","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]]
# print is_valid_sudoku(board_4)

true_board = [["5","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]]

# print is_valid_sudoku(true_board)


# true_board = 
# [["5","3",".",".","7",".",".",".","."],
# ["6",".",".","1","9","5",".",".","."],
# [".","9","8",".",".",".",".","6","."],
# ["8",".",".",".","6",".",".",".","3"],
# ["4",".",".","8",".","3",".",".","1"],
# ["7",".",".",".","2",".",".",".","6"],
# [".","6",".",".",".",".","2","8","."],
# [".",".",".","4","1","9",".",".","5"],
# [".",".",".",".","8",".",".","7","9"]]


# [["5","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]]
# false_board = [["8","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]]
# print is_valid_sudoku(false_board)

# false_board = 
# [["8","3",".",".","7",".",".",".","."],
#  ["6",".",".","1","9","5",".",".","."],
#  [".","9","8",".",".",".",".","6","."],
#  ["8",".",".",".","6",".",".",".","3"],
#  ["4",".",".","8",".","3",".",".","1"],
#  ["7",".",".",".","2",".",".",".","6"],
#  [".","6",".",".",".",".","2","8","."],
#  [".",".",".","4","1","9",".",".","5"],
#  [".",".",".",".","8",".",".","7","9"]]


false_again_board = [[".",".","4",".",".",".","6","3","."],[".",".",".",".",".",".",".",".","."],["5",".",".",".",".",".",".","9","."],[".",".",".","5","6",".",".",".","."],["4",".","3",".",".",".",".",".","1"],[".",".",".","7",".",".",".",".","."],[".",".",".","5",".",".",".",".","."],[".",".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".",".","."]]


# [[".",".","4",".",".",".","6","3","."],
#  [".",".",".",".",".",".",".",".","."],
#  ["5",".",".",".",".",".",".","9","."],
#  [".",".",".","5","6",".",".",".","."],
#  ["4",".","3",".",".",".",".",".","1"],
#  [".",".",".","7",".",".",".",".","."],
#  [".",".",".","5",".",".",".",".","."],
#  [".",".",".",".",".",".",".",".","."],
#  [".",".",".",".",".",".",".",".","."]]

# print is_valid_sudoku(false_again_board)

false_three = [["7",".",".",".","4",".",".",".","."],[".",".",".","8","6","5",".",".","."],[".","1",".","2",".",".",".",".","."],[".",".",".",".",".","9",".",".","."],[".",".",".",".","5",".","5",".","."],[".",".",".",".",".",".",".",".","."],[".",".",".",".",".",".","2",".","."],[".",".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".",".","."]]


# [["7",".",".",".","4",".",".",".","."],
#  [".",".",".","8","6","5",".",".","."],
#  [".","1",".","2",".",".",".",".","."],
#  [".",".",".",".",".","9",".",".","."],
#  [".",".",".",".","5",".","5",".","."],
#  [".",".",".",".",".",".",".",".","."],
#  [".",".",".",".",".",".","2",".","."],
#  [".",".",".",".",".",".",".",".","."],
#  [".",".",".",".",".",".",".",".","."]]

print is_valid_sudoku(false_three)