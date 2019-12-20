row = []
row[0] = [" ", "1", "2", "3"]
row[1] = ["1", "-", "-", "-"]
row[2] = ["2", "-", "-", "-"]
row[3] = ["3", "-", "-", "-"]
tic_tac_toe = false

until tic_tac_toe
    (0..3).each { |i|
        row[i].each {|x| print " #{x} "}
        puts 
    }
    print "\npick a row number: "
    row_number = gets.chomp.to_i
    print "pick a column number: "
    column_number = gets.chomp.to_i
    row[row_number][column_number] = "X"
    puts

    if row[1].count("X") == 3 || row[2].count("X") == 3 || row[3].count("X") == 3
       tic_tac_toe = true
    end 
    if row[1][1] == "X" && row[2][1] == "X" && row[3][1] == "X"
        tic_tac_toe = true
    end
    if row[1][2] == "X" && row[2][2] == "X" && row[3][2] == "X"
        tic_tac_toe = true
    end
    if row[1][3] == "X" && row[2][3] == "X" && row[3][3] == "X"
        tic_tac_toe = true
    end
    if row[1][1] == "X" && row[2][2] == "X" && row[3][3] == "X"
        tic_tac_toe = true
    end
    if row[3][1] == "X" && row[2][2] == "X" && row[1][3] == "X"
        tic_tac_toe = true
    end
end

(0..3).each { |i|
    row[i].each {|x| print " #{x} "}
    puts 
}

puts "\nCongradulations!! You have Tic Tac Toe!!\n\n"

