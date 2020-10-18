module Irena

class Renewables

attr_accessor :name, :energies

@@all = []

    def initialize(name)
        @name = name
        @energies = []
        save
    end

    def bioenergy
        name = "Bioenergy"
    end
    
    def geothermal
        name = "Geothermal"
    end

    def hydropower
        name = "Hydropower"
    end

    def ocean
        name = "Ocean"
    end

    def solar
        name = "Solar"
    end

    def wind
        name = "Wind"
    end

    def about
        name = "About"
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