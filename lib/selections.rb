module Irena

class Energy

attr_accessor :bioenergy, :geothermal, :hydropower, :ocean, :solar, :wind, :description

@@all = []

    # Hook
    def initialize(bioenergy, geothermal, hydropower, ocean, solar, wind)
        @bioenergy = bioenergy
        @geothermal = geothermal
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
    def self.new_from_renewables()
      @description = description
      Energy.new.tap do |energy|
        EnergyScraper.scrape_info.each do |description|
          energy.send("#{description}")
        end
      end
    end


end

end