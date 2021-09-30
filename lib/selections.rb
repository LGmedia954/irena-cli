require 'pry'

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

    def self.reset
      @@all.clear
    end

    def description
      @description
    end
 
    # psuedo code
    def self.new(name, description)  #Constructor
      EnergyScraper.new(*args)
        energy.send("#{k}=", v) # Mass Assignment
        return description
      end
    end


end

end