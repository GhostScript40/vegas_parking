require 'pry'
class VegasParking::TheStrip

  attr_accessor :name, :url, :description
  
def self.names
  VegasParking::Scraper.scrape_vegas
end



end
