require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative './selections.rb'

class Irena::Scraper

    def get_bioenergy
      doc = Nokogiri::HTML(open("https://www.irena.org/bioenergy"))
      name = doc.search("h2.subsite-banner-text").text

    end

    def get_geothermal
        doc = Nokogiri::HTML(open("https://www.irena.org/geothermal"))
    end

      def get_hydropower
        doc = Nokogiri::HTML(open("https://www.irena.org/hydropower"))
      end

      def get_ocean
        doc = Nokogiri::HTML(open("https://www.irena.org/ocean"))
      end

      def get_solar
        doc = Nokogiri::HTML(open("https://www.irena.org/solar"))
      end

      def get_wind
        doc = Nokogiri::HTML(open("https://www.irena.org/wind"))
      end

      def get_aboutpage
        doc = Nokogiri::HTML(open("https://www.irena.org/aboutirena"))
      end

      def get_topics
        doc.css(".post")
      end

      def make_topics
        self.get_topics.each do |post|
            Renewables.find {|e| e.name == Renewables.name}  #Looking to match menu selection to page fetch
            energy.description = post.css("center-right-border.p[0,1,2,3,]").text.strip.gsub(/\s+/,' ')
            end
        end

        def print_topics
            self.make_topics
            Renewables.detect do |headline|
              if @energies[input.to_i-1] == energy.title && Renewables.name
                puts "#{energy.title}\n\n"
                puts "#{energy.description}"
              end
            end
          end

    end

    Scraper.new.print_topics