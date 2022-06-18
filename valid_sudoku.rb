def is_valid_sudoku(board)
    #check row
    #check column
    #check boxes
        # check first three of first three rows
        #check second three of first three rows (etc)
        # make a routine for this too? It will be repeated up to 9 total times


        # once a number appears, we can't have it appear anymore. 
        # Entonces, we can make a hash map and add to it as we scan through
        # board.each
            # scan for numers
            # go ahead and save the number for each position 
            # go ahead and save chunks of three too. 
            
            board.each_with_index do |b|
                across_hash = {}
                b.each_with_index do |n|
                    if n != "."
                   
                        if !across_hash[n]
                            across_hash[n] = 1 
                        else
                            across_hash[n] += 1
                            # print across_hash
                            # return false
                        end
                
                      
                    end
                end

                #grab the first, second.. part of the array

                down_hash = {}
                for m in 0..8 do
                    if b[m] != "."
                        if !down_hash[b[m]]
                            down_hash[b[m]] = 1
                        else
                            down_hash[b[m]] += 1
                         
                            # print down_hash
                            return false
                        end
                    end
                end
                # print across_hash
                # print down_hash
                # puts ""

                triad_hash = {}
                for x in 0..2 do 
                    print b[x]
                    if b[x] != "."
                        if !triad_hash[b[x]]
                            triad_hash[b[x]]
                            # system("say k")
                        else
                            triad_hash[b[x]] += 1
                            system("say k")
                            # print triad_hash
                            # return false
                        end
                    end
                  
                end
                puts " ======"
            end


end

# formated_board = 
# [["5","3",".",".","7","7",".",".","."]
# ,["6",".",".","1","9","5",".",".","."]
# ,[".","9","8",".",".",".",".","6","."]
# ,["8",".",".",".","6",".",".",".","3"]
# ,["4",".",".","8",".","3",".",".","1"]
# ,["7",".",".",".","2",".",".",".","6"]
# ,[".","6",".",".",".",".","2","8","."]
# ,[".",".",".","4","1","9",".",".","5"]
# ,[".",".",".",".","8",".",".","7","9"]]


board = 
[["5","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]]


is_valid_sudoku(board)
