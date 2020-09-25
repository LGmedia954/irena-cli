require 'pry'
require 'colorize'

class Irena::Renewables  #Looking to do @energies = Irena::Renewables.available or read

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
    [6].name = "More about IRENA"

end


    def save  #To store items that will be read
        @@all << self
    end

    def self.all
        @@all
    end


    def read  #Calls save and returns instances of already read items
        @read = read
        @energies.select |item| if input.to_i-1 == ("0..6")
        item.save
        end
        all.blue
    end


    def available  #Should return instances of items not yet read
        @available = available
        @energies.cycle { |item| return item.cyan if !read }
        end
    end

end