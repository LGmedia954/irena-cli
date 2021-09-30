module Irena

class Energy

attr_accessor :name, :description

@@all = []

    # Hook
    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end
     
    # Class Method, Class Getter
    def self.all
        @@all  # accessible to the entire class
    end
        
 
 #Constructor
    def self.new_from_renewables(url)
        Energy.new.tap do |energy|
          EnergyScraper.fetch_renewables(url).each do |k,v|
            energy.send("#{k}=", v) # Mass Assignment
          end
        end
    end


end

end