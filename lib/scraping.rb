require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative './selections.rb'

class Irena::Scraper #The About page is the most different here

topics = [get_bioenergy, get_geothermal, get_hydropower, get_ocean, get_solar, get_wind, get_about]

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

      def get_about
        page = Nokogiri::HTML(open("https://www.irena.org/aboutirena"))
        title = page.css("h2.headline headline-md").text
        description = page.css("p.center-right-border")[0,1,2].text.strip.gsub(/\s+/,' ')
        bullets = page.css("li.liststyle").text
      end

      def find_topics
        self.topics.each do |topic|
        Renewables.find {|e| e.name == Renewables.name}
        end
      end

        def print_topics
            self.find_topics
            Renewables.detect do |item|
              if @energies[input.to_i-1] == topics.title && Renewables.name
                puts "#{item.title}\n\n"
                puts "#{item.description}"
                puts "#{item.bullets}" 
              end
            end
          end

    end

    Scraper.new.print_topics