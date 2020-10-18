module Irena

class Renewables

attr_accessor :name, :energies

@@all = []

    def initialize(name)
        @name = name
        @energies = []
        save
    end

    def energies
        @energies
    end   

    def self.all
        @@all
    end

    def save
        @@all << self
    end

end

end