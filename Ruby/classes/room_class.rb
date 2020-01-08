# Create a Room with classes

# You will be creating a building strucutre that allows
# a user to navigate from room to room.
# Focusing on the room first, think about what attributes a 
# room has.
# From our example
# exits, description, roomID (to uniquely ID every room)

# Examples of roomID could be kitchen, laundry room, dining room,
# library, etc...

# Exercise 1: Create a class called Room that has the attributes
# described above: exits, description, roomID/Name
class Room

    attr_accessor :room_name, :description, :exits
    def initialize(room_name, description)
        @room_name = room_name
        @description = description
        @exits = {}        
    end     

    def set_exits(nExit, eExit, sExit, wExit)
        @exits = {
            "north" => nExit,
            "east" => eExit,
            "south" => sExit,
            "west" => wExit
        }
    end

end

class Person
    def initialize(room)
        @current_room = room
    end

    def go(exit)
       if @current_room.exits[exit] != nil       
       @current_room = @current_room.exits[exit]
       end
    end

    attr_reader :current_room
    
end
# Exercise 2: Create an object called classroom using your
# Room class. The classroom needs 1 exit, a description and
# roomID (or name) called "classroom"

#SEE CHARACTER CLASS