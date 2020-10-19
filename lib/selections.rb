module Irena

class Energy

attr_accessor :name, :energies

@@all = []

    def initialize()
        @name = name
        @energies = []
        save
    end

    def save
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

    #Contructor -
    def self.new_from_irena(url)
        Energy.new.tap do |energy|
        Scraper.irena(url).each do |k,v|
            energy.send("#{k}=", v) # Mass Assignment
            end
        end
    end


end

end