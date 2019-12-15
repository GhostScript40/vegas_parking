  require 'pry'
class VegasParking::Scraper
  
  attr_accessor :name, :info
  
  
  def self.scrape_vegas
    
            doc = Nokogiri::HTML(open("https://www.vegas.com/transportation/free-parking-las-vegas/"))
      
                            spots = doc.css('p a')
                            spots.each do |s|
                              name = s.css('p a').text.strip 
                              url = s.xpath('//p/a/@href').text
                              description = s.css('p').text
                              details = {url: url, description: description}
                              VegasParking::TheStrip.new(name, details)
                            end
                            
                            
  end
end