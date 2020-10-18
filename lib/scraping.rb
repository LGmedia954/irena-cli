module Irena

class Scraper

  attr_accessor :page, :title, :description

  def initialize()
    @page = page
    @title = title
    @description = description
  end
  
    def self.get_bioenergy
        page = Nokogiri::HTML(open("https://www.irena.org/bioenergy"))
        title = page.css("h2.subsite-banner-text").text
        description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
    end

    def self.get_geothermal
        page = Nokogiri::HTML(open("https://www.irena.org/geothermal"))
        title = page.css("h2.subsite-banner-text").text
        description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
    end

      def self.get_hydropower
        page = Nokogiri::HTML(open("https://www.irena.org/hydropower"))
        title = page.css("h2.subsite-banner-text").text
        description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
      end

      def self.get_ocean
        page = Nokogiri::HTML(open("https://www.irena.org/ocean"))
        title = page.css("h2.subsite-banner-text").text
        description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
      end

      def self.get_solar
        page = Nokogiri::HTML(open("https://www.irena.org/solar"))
        title = page.css("h2.subsite-banner-text").text
        description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
      end

      def self.get_wind
        page = Nokogiri::HTML(open("https://www.irena.org/wind"))
        title = page.css("h2.subsite-banner-text").text
        description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
      end

      def self.get_about  #The About page has list items
        page = Nokogiri::HTML(open("https://www.irena.org/aboutirena"))
        title = page.css("h2.headline headline-md").text
        description = page.css("span.center-right-border").text.strip.gsub(/\s+/,' ')
      end

      @@topics = [get_bioenergy, get_geothermal, get_hydropower, get_ocean, get_solar, get_wind, get_about]

        def self.print_topics
          @@topics.each do |t|
            puts "#{@title}\n\n"
            puts "#{@description}"
          end
        end
    
    end
  
  end

    Irena::Scraper.print_topics