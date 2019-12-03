class VegasParking::TheStrip
  
  attr_accessor :name, :location, :url
  
  def self.places
  #This should scrape the parking website
   self.scrape_spots
   end
  
  def scrape_spots
    spots = []
    
    
   place_1 = self.new
   place_1.name = "Arizona Charlies"
   place_1.location = "Boulder Hwy"
   place_1.url = "https://www.vegas.com/hotels/arizonacharlieseast/"
   
   place_2 = self.new
   place_2.name = "Hooters"
   place_2.location = "Las Vegas Blvd"
   place_2.url = "https://www.vegas.com/hotels/hooters/"
     end
  end