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
    
    # def self.new(name, description)
    #   EnergyScraper.new(*args).each do |energy|
    #     energy.send("#{name}=", description) # Mass Assignment
    #   end
    # end

end

end