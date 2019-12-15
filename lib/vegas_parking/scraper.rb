  require 'pry'
class VegasParking::Scraper
  
  attr_accessor :name, :info
  
  
  def self.scrape_vegas
    
            doc = Nokogiri::HTML(open("https://www.vegas.com/transportation/free-parking-las-vegas/"))
      
                            spots = doc.css("div p a")
                            
                            spots.each do |s|
                            name = doc.css('p a').text.strip  
                            
                            url = s.xpath('//p/a/@href').text
                            
                            description = doc.css('p').collect {|d| d.text}
                            
                            details = {url: url, description: description}
                            VegasParking::TheStrip.new(name, details)
                      
      
    end
  end
  
  def self.detail
    doc = Nokogiri::HTML(open("https://www.vegas.com/transportation/free-parking-las-vegas/"))
     url = doc.xpath('//p/a/@href').text
     description = doc.css('p').collect {|d| d.text}
     details = {url: url, description: description}
  end
end