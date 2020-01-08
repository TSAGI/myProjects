class Item

    def initialize(desc)
        @description = desc
    end

    attr_reader :description
end

# hammer = Item.new("This is a strong hammer")
# puts hammer.description