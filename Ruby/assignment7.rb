def redacted
    print "Tell me a story. End it by pressing the enter button: \n"
    story = gets.chomp
    puts
    redacted_story = story.split(" ")    
    redacted_story.each do |word|
        if word.include?("a")
            word.gsub!(word, "REDACTED")     
        end
        print "#{word} "
    end
    puts
end

redacted

