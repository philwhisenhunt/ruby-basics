def is_valid_sudoku(board)

   
    squares = {}
    horizontal = {}
    vertical = {}
    # triad_column
    board.each_with_index do |b, index|
 
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
                    puts horizontal[b[n]]
                    return false
                end

                if !vertical[b[n]]
                    vertical[b[n]] = 1
                else
                    vertical[b[n]] += 1
                    puts vertical[b[n]]
                    return false
                end

                index += 1
                puts "Index is: " + index.to_s
                puts "Index divded by 3 is: " + (index/3).to_s
                if !squares["A#{index/3}"+ "-" + "#{n/3}"]
                    system("say hit the if")
                    squares["A#{index/3}"+ "-" + "#{n/3}"] = 1
                else
                    system("say hit the else")
                    #probably can't divide 0 by 3 here..
                    squares["A#{index/3}"+ "-" + "#{n/3}"] += 1
                    puts "It is this one"
                    puts "Index: " + index.to_s
                    puts "N: " + n.to_s
                    puts "Squares: " + squares["A#{index/3}"+ "-" + "#{n/3}"].to_s
                    puts "Interior: " + "A#{index/3}"+ "-" + "#{n/3}"
                    return false
                end


                # now just need triages

            
        end
        # print horizontal
        # puts ""
        # print vertical
        # puts ""
        # print squares
       # Tried "#{index/3}#{n/3}".to_s
    end
   

return true
end


# board_3 = [["8","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]]

board_4 = [["5","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]]
print is_valid_sudoku(board_4)