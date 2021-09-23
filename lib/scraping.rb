module Irena

class EnergyScraper

  energy_links = {
    "1" => {
      resource: "bioenergy",
      url: "https://www.irena.org/bioenergy"
    },
    "2" => {
      resource: "geothermal",
      url: "https://www.irena.org/geothermal"
    },
    "3" => {
      resource: "hydropower",
      url: "https://www.irena.org/hydropower"
    },
    "4" => {
      resource: "ocean",
      url: "https://www.irena.org/ocean"
    },
    "5" => {
      resource: "solar",
      url: "https://www.irena.org/solar"
    },
    "6" => {
      resource: "wind",
      url: "https://www.irena.org/wind"
    }
  }


  def get_page(url)
    Nokogiri::HTML(open(url))
  end

  def fetch_descriptions(url)
    self.get_page(url).search("p.center-right-border").each do |page|
      Irena::Selections.new_from_renewables(url)
    end
  end


      #energy[:bioenergy] = bio.search("p.center-right-border").text.strip.gsub(/\s+/,' ')
      #energy[:geothermal] = geo.search("p.center-right-border").text.strip.gsub(/\s+/,' ')
      #energy[:hydropower] = hydro.search("p.center-right-border").text.strip.gsub(/\s+/,' ')
      #energy[:ocean] = seas.search("p.center-right-border").text.strip.gsub(/\s+/,' ')
      #energy[:solar] = sun.search("p.center-right-border").text.strip.gsub(/\s+/,' ')
      #energy[:wind] = air.search("p.center-right-border").text.strip.gsub(/\s+/,' ')


end

end
