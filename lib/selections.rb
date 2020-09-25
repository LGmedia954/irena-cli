require 'pry'

class Renewables::Energy  #Looking to do @energies = Renewables::Energy.available or read

attr_accessor :name, :energies, :read, :available

@@all = []

def initialize(energies = [])
    @name = name
    @energies = energies

    [0] = self.new
    [0].name = "Bioenergy"

    [1] = self.new
    [1].name = "Geothermal"

    [2] = self.new
    [2].name = "Hydropower"

    [3] = self.new
    [3].name = "Ocean"

    [4] = self.new
    [4].name = "Solar"

    [5] = self.new
    [5].name = "Wind"

    [6] = self.new
    [6].name = "About IRENA"

end


    def save
        @@all << self
    end

    def self.all
        @@all
    end


    def read  #Should return instances of already read items
        @read = read
        @energies.select |energy| if input.to_i-1 == ("0..6")
        energy.save
        @@all
        end
    end


    def available  #Should return instances of items not yet read
        @available = available
        @energies.cycle { |energy| puts energy if !read }
        end
    end

end