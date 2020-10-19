module Irena

class Energy

attr_accessor :name, :element

@@all = []

    def initialize(name, element)
        @name = name
        @element = element
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

end

end