def redacted
    print "Tell me a story. End it by pressing the enter button: \n"
    story = gets.chomp
    puts
    story = story.split(" ")
    story.each do |word|
        if word.include?("a")
            print "REDACTED "
        else
            print "#{word} "
        end
    end
    puts
end

redacted

