require 'pry'
class VegasParking::TheStrip

@@all = []

  attr_accessor :name
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all  
    VegasParking::Scraper.scrape_vegas if @@all.empty?
    @@all
  end
  
    def save
  @@all << self
  end
end