#CREATING THE GRID FOR TIC TAC TOE
##################################
row = [] 
row[0] = [" ", "1", "2", "3"]
row[1] = ["1", "-", "-", "-"]
row[2] = ["2", "-", "-", "-"]
row[3] = ["3", "-", "-", "-"]

tic_tac_toe1 = false  #PLAYER WON STATUS
tic_tac_toe2 = false  #COMPUTER WON STATUS
full_board = false

until tic_tac_toe1 || tic_tac_toe2 || full_board
    #PRINT OUT THE BOARD
    ####################
    (0..3).each { |i|       
        row[i].each {|x| print " #{x} "}
        puts 
    }
    
    #PROMPT PLAYER TO PLACE 'X'. IF THE SPOT ON THE BOARD IS TAKEN, 
    #PROMPT THE PLAYER TO PICK ANOTHER SPOT
    ##################################################
    print "\npick a row number: "
    row_number = gets.chomp.to_i
    print "pick a column number: "
    column_number = gets.chomp.to_i 
    until row[row_number][column_number] == "-"     
        puts "That spot is already taken. Pick another spot"
        print "\npick a row number: "
        row_number = gets.chomp.to_i
        print "pick a column number: "
        column_number = gets.chomp.to_i
    end 
    puts     
    row[row_number][column_number] = "X"

    #MARK THE BOARD AS FULL WHEN ALL SPACES ARE FULL
    #################################################
    if (row[1].count("-") + row[2].count("-") + row[3].count("-")) == 0
        full_board = true
    end

    #COMPUTER PICKS A RANDOM SPOT TO PLACE 'O'. IF THE SPOT IS TAKEN,
    #THE COMPUTER PICKS ANOTHER SPOT. IF THE BOARD IS FULL, DO NOTHING.
    #################################################################
    num1 = rand(1..3)
    num2 = rand(1..3)
    if !full_board
        until row[num1][num2] == "-" 
            num1 = rand(1..3)
            num2 = rand(1..3)
        end
    end
    row[num1][num2] = "O"   
    
    #CHECK IF THE PLAYER WON. ARE THERE 3 "X's" IN A ROW.
    #####################################################
    (1..3).each {|i| 
        if row[i].count("X") == 3 ||       
            row[1][i] == "X" && row[2][i] == "X" && row[3][i] == "X"
            tic_tac_toe1 = true 
        end}  
    if row[1][1] == "X" && row[2][2] == "X" && row[3][3] == "X" ||
        row[3][1] == "X" && row[2][2] == "X" && row[1][3] == "X"
        tic_tac_toe1 = true
    end    

    #CHECK IF THE COMPUTER WON. ARE THERE 3 "O's" IN A ROW.
    #####################################################
    (1..3).each {|i| 
        if row[i].count("O") == 3 ||       
            row[1][i] == "O" && row[2][i] == "O" && row[3][i] == "O"
            tic_tac_toe2 = true 
        end}   
    if row[1][1] == "O" && row[2][2] == "O" && row[3][3] == "O" ||
        row[3][1] == "O" && row[2][2] == "O" && row[1][3] == "O"
        tic_tac_toe2 = true
    end      
end

#PRINT OUT THE BOARD
####################
(0..3).each { |i|  
    row[i].each {|x| print " #{x} "}
    puts 
}

#DECLARE WINNER
###############
if tic_tac_toe1 && tic_tac_toe2 
    puts "\nIt's a draw. Nobody got Tic Tac Toe.\n\n"
elsif tic_tac_toe1
    puts "\nCongradulations!! You have Tic Tac Toe!!\n\n"
elsif tic_tac_toe2
    puts "\nSorry. You lost. Your opponent has Tic Tac Toe.\n\n"
else
    puts "\nIt's a draw. Nobody got Tic Tac Toe.\n\n"
end

