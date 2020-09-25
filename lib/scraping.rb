require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative './selections.rb'

class Irena::Scraper

    def get_bioenergy
      Nokogiri::HTML(open("https://www.irena.org/bioenergy"))
    end

    def get_geothermal
        Nokogiri::HTML(open("https://www.irena.org/geothermal"))
    end

      def get_hydropower
        Nokogiri::HTML(open("https://www.irena.org/hydropower"))
      end

      def get_ocean
        Nokogiri::HTML(open("https://www.irena.org/ocean"))
      end

      def get_solar
        Nokogiri::HTML(open("https://www.irena.org/solar"))
      end

      def get_wind
        Nokogiri::HTML(open("https://www.irena.org/wind"))
      end

      def get_aboutpage
        Nokogiri::HTML(open("https://www.irena.org/aboutirena"))
      end

      def get_topics
        doc.css(".post")
      end

      def make_topics
        self.get_topics.each do |post|
            energy = Renewables.new  #This is great if I'm just displaying, 
            energy.title = post.css("h2").text
            energy.description = post.css("p").text
            end
        end

        def print_topics
            self.make_topics
            Renewables.detect do |energy|
              if @energies[input.to_i-1] == energy.title && Renewables.name
                puts "#{energy.title}"
                puts "#{energy.description}"
              end
            end
          end

    end

    Scraper.new.print_topics