module Irena

class EnergyScraper

  def scrape_bioenergy
    bio = Nokogiri::HTML(open("https://www.irena.org/bioenergy"))
    @bioenergy = bio

  end

  def scrape_geothermal
    geo = Nokogiri::HTML(open("https://www.irena.org/geothermal"))
    @geothermal = geo

  end

  def scrape_hydropower
    hydro = Nokogiri::HTML(open("https://www.irena.org/hydropower"))
    @hydropower = hydro

  end

  def scrape_ocean
    seas = Nokogiri::HTML(open("https://www.irena.org/ocean"))
    @ocean = seas

  end

  def scrape_solar
    sun = Nokogiri::HTML(open("https://www.irena.org/solar"))
    @solar = sun

  end

  def scrape_wind
    air = Nokogiri::HTML(open("https://www.irena.org/wind"))
    @wind = air

  end

  
  energy = {     }


  def self.renewables(url)
      
      
      

      energy[:bioenergy] = bio.search("p.center-right-border").text.strip.gsub(/\s+/,' ')
      #energy[:geothermal] = geo.search("p.center-right-border").text.strip.gsub(/\s+/,' ')
      #energy[:hydropower] = hydro.search("p.center-right-border").text.strip.gsub(/\s+/,' ')
      #energy[:ocean] = seas.search("p.center-right-border").text.strip.gsub(/\s+/,' ')
      #energy[:solar] = sun.search("p.center-right-border").text.strip.gsub(/\s+/,' ')
      #energy[:wind] = air.search("p.center-right-border").text.strip.gsub(/\s+/,' ')

      energy

  end


#  def self.print_renewables(input)
 #   EnergyScraper.renewables(url).each do |k,v|
  #    case input

   #     when "1"
   #       print "#{energy}:#{bioenergy}"
   #     when "2"  
   #       print "#{energy}:#{geothermal}"
   #     when "3"
   #       print "#{energy}:#{hydropower}"
   #     when "4"
   #       print "#{energy}:#{ocean}"
   #     when "5"
   #       print "#{energy}:#{solar}"
   #     when "6"
   #      print "#{energy}:#{wind}"
   #     
   #    end
   #  end
#  end


end

end
