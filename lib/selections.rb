module Irena

class Energy

attr_accessor :bioenergy, :geothermal, :hydropower, :ocean, :solar, :wind, :about

@@all = []

    def initialize
        @@all << self
    end
     
    def self.all
        @@all
    end

    def read(name)
        @energies << name
    end

    def energies
        @energies
    end

    #Constructor
    def self.new_from_renewables(url)
        Energy.new.tap do |energy|
        EnergyScraper.renewables(url).each do |k,v|
            energy.send("#{k}=", v) # Mass Assignment
            end
        end
    end

end

end