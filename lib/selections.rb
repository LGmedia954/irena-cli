module Irena

class Renewables

attr_accessor :name, :energies, :read

@@all = []

def initialize(name)
    @name = name
    @energies = energies
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

    def wind
        name = "About"
    end


    def energies
        @energies
    end

    def save  #Store items.
        @@all << self
    end    

    def self.all  #self.all is our Class Reader/Getter
        @@all
    end


    def self.read  #Calls save for energies that the user chooses for reading, and should return @@all those items in green
        @read = read
        @energies.select {|item| input.to_i-1.any? == ("0..6")}
        item.save
        @@all.green
    end

end
end