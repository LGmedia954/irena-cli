class Irena::Renewables

attr_accessor :name, :energies, :read, :available

@@all = []

def initialize(energies = [bioenergy, geothermal, hydropower, ocean, solar, wind, about])
    @name = name
    @energies = energies

    [0].name = "Bioenergy"

    [1].name = "Geothermal"

    [2].name = "Hydropower"

    [3].name = "Ocean"

    [4].name = "Solar"

    [5].name = "Wind"

    [6].name = "About"

end

    def save  #Class method to store item.
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