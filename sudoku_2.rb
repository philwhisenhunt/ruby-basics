def is_valid_sudoku_2(board)

   
    # triad_column
    board.each_with_index do |b, index|
        horizontal = {}
        vertical = {}
        # puts index.to_s + " is: " + b.to_s

        for n in 0..8 do
            # print b[n]
            if n == "."
                next
            end
          
                if !horizontal[b[n]]
                    horizontal[b[n]] = 1
                else
                    horizontal[b[n]] += 1
                end

                if !vertical[b[n]]
                    vertical[b[n]] = 1
                else
                    vertical[b[n]] += 1
                end

                # now just need triages

            
        end
        print horizontal
        puts ""
        print vertical
    end
   


end


board_3 = [["8","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]]

print is_valid_sudoku_2(board_3)