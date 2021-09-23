module Irena

class Energy

attr_accessor :bioenergy, :geothermal, :hydropower, :ocean, :solar, :wind

@@all = []

    # Hook
    def initialize(bioenergy, geothermal, hydropower, ocean, solar, wind)
        @bioenergy = bioenergy
        @geothermal = bioenergy
        @hydropower = hydropower
        @ocean = ocean
        @solar = solar
        @wind = wind
        @@all << self
    end
     
    # Class Method, Class Getter
    def self.all
        @@all  # accessible to the entire class
    end

    def self.reset
      @@all.clear
    end

    def self.find(input)
      self.all[input.to_i-1]
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