module Irena

class Scraper

  attr_accessor :page, :title, :description

  def initialize()
    @page = page
    @title = title
    @description = description
  end
  
    def self.get_bioenergy  #This feels repetitive, but the URLs are different and the last scrape has list items, so I left this for now.
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
        description = page.css("p.center-right-border").text.strip.gsub(/\s+/,' ')
        bullets = page.css("li.liststyle").text
      end

      @@topics = [get_bioenergy, get_geothermal, get_hydropower, get_ocean, get_solar, get_wind, get_about]

        def self.print_topics  #Defining a method inside the class Scraper. Self would be the Scraper object.
          @@topics.each do |t|

                puts "#{@title}\n\n"
                puts "#{@description}"
                puts "#{@bullets}" || ""

          end
        end
    
    end
  end

    Irena::Scraper.print_topics