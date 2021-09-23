module Irena

class Energy

attr_accessor :bioenergy, :geothermal, :hydropower, :ocean, :solar, :wind

@@all = []

    # Hook
    def initialize
        @@all << self
    end
     
    # Class Method, Class Getter
    def self.all
        @@all
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