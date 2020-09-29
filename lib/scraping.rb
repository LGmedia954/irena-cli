require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative './selections.rb'

class Irena::Scraper #The About page is the most different one here

topics = [Bioenergy, Geothermal, Hydropower, Ocean, Solar, Wind, About]

    def Bioenergy
      page = Nokogiri::HTML(open("https://www.irena.org/bioenergy"))
      title = page.css("h2.subsite-banner-text").text
      description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
    end

    def Geothermal
        page = Nokogiri::HTML(open("https://www.irena.org/geothermal"))
        title = page.css("h2.subsite-banner-text").text
        description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
    end

      def Hydropower
        page = Nokogiri::HTML(open("https://www.irena.org/hydropower"))
        title = page.css("h2.subsite-banner-text").text
        description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
      end

      def Ocean
        page = Nokogiri::HTML(open("https://www.irena.org/ocean"))
        title = page.css("h2.subsite-banner-text").text
        description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
      end

      def Solar
        page = Nokogiri::HTML(open("https://www.irena.org/solar"))
        title = page.css("h2.subsite-banner-text").text
        description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
      end

      def Wind
        page = Nokogiri::HTML(open("https://www.irena.org/wind"))
        title = page.css("h2.subsite-banner-text").text
        description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
      end

      def About
        page = Nokogiri::HTML(open("https://www.irena.org/aboutirena"))
        title = page.css("h2.headline headline-md").text
        description = page.css("p.center-right-border")[0,1,2].text.strip.gsub(/\s+/,' ')
        bullets = page.css("li.liststyle").text
      end

      def find_topics
        self.topics.each do |t|
        Renewables.find {|t| t.name == Renewables.name}
        end
      end

        def print_topics
            self.find_topics
            Renewables.detect do |item|
              if topics.to_s.any? == Renewables.name && @energies[input.to_i-1]
                puts "#{item.title}\n\n"
                puts "#{item.description}"
                puts "#{item.bullets}" || ""
              enddz
            end
          end

    end

    Scraper.new.print_topics