require_relative '../lib/cli'
require_relative '../lib/selections'

require 'pry'
require 'colorize'
require 'nokogiri'
require 'open-uri'

require_relative './selections.rb'

class Irena::Scraper  #The About page has list items

topics = [get_bioenergy, get_geothermal, get_hydropower, get_ocean, get_solar, get_wind, get_about]

    def get_bioenergy
      subject = "Bioenergy"
      page = Nokogiri::HTML(open("https://www.irena.org/bioenergy"))
      title = page.css("h2.subsite-banner-text").text
      description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
    end

    def get_geothermal
        subject = "Geothermal"
        page = Nokogiri::HTML(open("https://www.irena.org/geothermal"))
        title = page.css("h2.subsite-banner-text").text
        description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
    end

      def get_hydropower
        subject = "Hydropower"
        page = Nokogiri::HTML(open("https://www.irena.org/hydropower"))
        title = page.css("h2.subsite-banner-text").text
        description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
      end

      def get_ocean
        subject = "Ocean"
        page = Nokogiri::HTML(open("https://www.irena.org/ocean"))
        title = page.css("h2.subsite-banner-text").text
        description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
      end

      def get_solar
        subject = "Solar"
        page = Nokogiri::HTML(open("https://www.irena.org/solar"))
        title = page.css("h2.subsite-banner-text").text
        description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
      end

      def get_wind
        subject = "Wind"
        page = Nokogiri::HTML(open("https://www.irena.org/wind"))
        title = page.css("h2.subsite-banner-text").text
        description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
      end

      def get_about
        subject = "About"
        page = Nokogiri::HTML(open("https://www.irena.org/aboutirena"))
        title = page.css("h2.headline headline-md").text
        description = page.css("p.center-right-border")[0,1,2].text.strip.gsub(/\s+/,' ')
        bullets = page.css("li.liststyle").text
      end

      def find_topics
        self.topics.each do |t|
        Renewables.find {|t| t.subject == Renewables.name}
        end
      end

        def print_topics  #Case input was not my first choice for code. I had a bit of difficulty here.
            self.find_topics
            Renewables.one? |item|
            case input
              when @energies[input.to_i-1] == 0
                get_bioenergy
              when @energies[input.to_i-1] == 1
                get_geothermal
              when @energies[input.to_i-1] == 2
                get_hydropower
              when @energies[input.to_i-1] == 3
                get_ocean
              when @energies[input.to_i-1] == 4
                get_solar
              when @energies[input.to_i-1] == 5
                get_wind
              when @energies[input.to_i-1] == 6
                get_about
            end

                puts "#{item.title}\n\n"
                puts "#{item.description}"
                puts "#{item.bullets}" || ""
            
        end
    
    
    end

    Irena::Scraper.new.print_topics