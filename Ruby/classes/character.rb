require_relative 'item.rb'
require_relative 'room_class.rb'

class Character
    attr_reader :current_room
    
    def initialize(room)
        @current_room = room
        @stuff = []
    end
    
    def addItem(item)
        @stuff.push(item)
    end
    
    def getItems
        @stuff.each {|item| puts "#{item.name}: #{item.description}"}
    end
    
    def go(exit)
       if @current_room.exits[exit] != nil       
       @current_room = @current_room.exits[exit]
       end
    end
end

classroom = Room.new("Classroom", "An empty classroom")
outside = Room.new("Outside", "The great outdoors")
classroom.set_exits(nil, nil, outside, nil)
outside.set_exits(classroom, nil, nil, nil)

hammer = Item.new("Hammer", "This is a strong hammer")
bow = Item.new("Bow", "Flexible and agile")

bob = Character.new(classroom)

bob.addItem(hammer)
bob.addItem(bow)
bob.getItems

puts bob.current_room.room_name
bob.go("south")
puts bob.current_room.room_name
bob.go("north")
puts bob.current_room.room_name
