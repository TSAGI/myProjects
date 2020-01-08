class Item

    def initialize(name, desc)
        @name = name
        @description = desc
    end

    attr_reader :description, :name
end

