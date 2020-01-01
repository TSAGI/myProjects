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
    def initialize(room_name, description)
        @room_name = room_name
        @description = description
        @exits = {}        
    end
    
    def get_room_name
        @room_name
    end
    
    def set_room_name(new_room_name)
        @room_name = new_room_type
    end

    def get_description
        @description
    end

    def set_description(new_description)
        @description = new_description
    end
    
    def get_exits
        @exits
    end

    def set_exits(nExit, eExit, sExit, wExit)
        @exits = {
            "north" => nExit,
            "east" => eExit,
            "south" => sExit,
            "west" => wExit
        }
    end

    def get_items
        @items
    end

    def set_items(new_items)
        @items = new_items
    end

end

class Person
    def initialize(room)
        @current_room = room
    end

    def go(exit)
       if @current_room.get_exits[exit] != nil       
       @current_room = @current_room.get_exits[exit]
       end
    end

    def get_room
        @current_room
    end
end
# Exercise 2: Create an object called classroom using your
# Room class. The classroom needs 1 exit, a description and
# roomID (or name) called "classroom"

classroom = Room.new("Classroom", "An empty classroom")
outside = Room.new("Outside", "The great outdoors")

classroom.set_exits(nil, nil, outside, nil)
outside.set_exits(classroom, nil, nil, nil)

person = Person.new(classroom)
puts person.get_room.get_room_name
person.go("south")
puts person.get_room.get_room_name
person.go("north")
puts person.get_room.get_room_name
