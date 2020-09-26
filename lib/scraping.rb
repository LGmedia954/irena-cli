require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative './selections.rb'

class Irena::Scraper  #This could be refactored, but I'm leaving it for now because the About page is different

    def get_bioenergy
      page = Nokogiri::HTML(open("https://www.irena.org/bioenergy"))
      title = page.css("h2.subsite-banner-text").text
      description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
    end

    def get_geothermal
        page = Nokogiri::HTML(open("https://www.irena.org/geothermal"))
        title = page.css("h2.subsite-banner-text").text
        description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
    end

      def get_hydropower
        page = Nokogiri::HTML(open("https://www.irena.org/hydropower"))
        title = page.css("h2.subsite-banner-text").text
        description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
      end

      def get_ocean
        page = Nokogiri::HTML(open("https://www.irena.org/ocean"))
        title = page.css("h2.subsite-banner-text").text
        description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
      end

      def get_solar
        page = Nokogiri::HTML(open("https://www.irena.org/solar"))
        title = page.css("h2.subsite-banner-text").text
        description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
      end

      def get_wind
        page = Nokogiri::HTML(open("https://www.irena.org/wind"))
        title = page.css("h2.subsite-banner-text").text
        description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
      end

      def get_aboutpage
        page = Nokogiri::HTML(open("https://www.irena.org/aboutirena"))
        title = page.css("h2.headline headline-md").text
      end

      def make_topics
        self.each do |post|
            Renewables.find {|e| e.name == Renewables.name}  #Looking to match menu selection to page fetch
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