class Animal
    def initialize(gender, age, name)
        @gender = gender
        @age = age
        @name = name
    end

    def getGender
        return @gender
    end

    def getAge
        return @age
    end

    def getName
        return @name 
    end

    def setGender(gender)
        @gender = gender
    end

    def setAge(age)
        @age = age
    end

    def setName(name)
        @name = name 
    end
end

class Person
    def initialize(gender, age, height)
        @gender = gender
        @age = age
        @height = height
    end

    def getGender
        return @gender
    end

    def getAge
        return @age
    end

    def getHeight
        return @height 
    end

    def setGender(gender)
        @gender = gender
    end

    def setAge(age)
        @age = age
    end

    def setHeight(height)
        @height = height 
    end
end

class Building
    def initialize(size, age, name)
        @size = size
        @age = age
        @name = name
    end

    def getSize
        return @size
    end

    def getAge
        return @age
    end

    def getName
        return @name 
    end

    def setSize(size)
        @size = size
    end

    def setAge(age)
        @age = age
    end

    def setName(name)
        @name = name 
    end
end

tiger = Animal.new("male", 12, "Tigger")
shaw = Person.new("male", 37, "6\'7\"")
skyscraper = Building.new("1453 feet", 88, "Empire State Building")

print "#{tiger.getName} is a #{tiger.getAge} year old #{tiger.getGender}.\n\n"
print "The world's strongest person is a #{shaw.getHeight} tall, #{shaw.getAge} year old #{shaw.getGender}.\n\n"
print "The #{skyscraper.getName} is #{skyscraper.getSize} tall, and is #{skyscraper.getAge} years old.\n\n"
tiger.setName("Tigress")
tiger.setGender("female")
tiger.setAge("16")
shaw.setHeight("10\'4")
shaw.setAge(240)
shaw.setGender("female")
skyscraper.setAge("90")
skyscraper.setSize(1046)
print "#{tiger.getName} is a #{tiger.getAge} year old #{tiger.getGender}.\n\n"
print "The world's strongest person is a #{shaw.getHeight} tall, #{shaw.getAge} year old #{shaw.getGender}.\n\n"
print "The #{skyscraper.getName} is #{skyscraper.getSize} tall, and is #{skyscraper.getAge} years old.\n"