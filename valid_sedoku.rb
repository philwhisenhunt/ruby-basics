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

end

board = 
[["5","3",".",".","7",".",".",".","."]
,["6",".",".","1","9","5",".",".","."]
,[".","9","8",".",".",".",".","6","."]
,["8",".",".",".","6",".",".",".","3"]
,["4",".",".","8",".","3",".",".","1"]
,["7",".",".",".","2",".",".",".","6"]
,[".","6",".",".",".",".","2","8","."]
,[".",".",".","4","1","9",".",".","5"]
,[".",".",".",".","8",".",".","7","9"]]

is_valid_sudoku(board)