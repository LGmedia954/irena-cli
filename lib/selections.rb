require_relative '../lib/cli'
require_relative '../lib/scraping'

require 'pry'
require 'colorize'

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

    def save  #Store items
        @@all << self
    end    

    def self.all
        @@all
    end


    def read  #Calls save and returns instances of already read items in green
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