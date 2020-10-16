module Irena

class Renewables

attr_accessor :name, :energies, :read, :available

@@all = []

def initialize(name)
    @name = name
    @energies = energies
    save
end

    def bioenergy
        bioenergy = "Bioenergy"
    end
    
    def geothermal
        geothermal = "Geothermal"
    end

    def hydropower
        hydropower = "Hydropower"
    end

    def ocean
        ocean = "Ocean"
    end

    def solar
        solar = "Solar"
    end

    def wind
        wind = "Wind"
    end

    def wind
        wind = "About"
    end


    def energies
        @energies
    end

    def save  #Store item.
        @@all << self
    end    

    def self.all  #self.all is our Class Reader/Getter
        @@all
    end


    def read  #Calls save for energies that the user chooses for reading, and should return @@all those items in green
        @read = read
        @energies.select {|item| input.to_i-1.any? == ("0..6")}
        item.save
        @@all.green
    end


    def available  #Should return instances of items not yet read
        @available = available
        @energies.find_all {|item| item.cyan if !read}
    end

end
end