module Irena

class Renewables

attr_accessor :name, :energies

@@all = []

    def initialize(name)
        @name = name
        @energies = []
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def energies
        @energies
    end

end

end