module Irena

class Renewables

attr_accessor :name, :energies

@@all = []

def initialize(name)
    @name = name
    @energies = energies
    @@all << self
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

    def wind
        name = "About"
    end


    def energies
        @energies
    end

    def save  #Store items.
        
    end    

    def self.all  #self.all is our Class Reader/Getter
        @@all
    end

end
end