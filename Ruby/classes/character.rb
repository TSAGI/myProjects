require_relative 'item.rb'

class Character

    def initialize
        @stuff = []
    end

    def addItem(item)
        @stuff.push(item)
    end

    def getItems
        @stuff.each {|item| puts "#{item.name}: #{item.description}"}
    end
    
end

hammer = Item.new("Hammer", "This is a strong hammer")
bow = Item.new("Bow", "Flexible and agile")
bob = Character.new()
bob.addItem(hammer)
bob.addItem(bow)
bob.getItems