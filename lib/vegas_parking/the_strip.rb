require 'pry'
class VegasParking::TheStrip
  
  @@all = []
  
  attr_accessor :name, :url, :description
  
        def initialize(name, url, description)
        @name = name
        @url = url
        @description = description
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
