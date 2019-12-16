  require 'pry'
class VegasParking::Scraper
  
  attr_accessor :name, :info
  
  def self.everything
    doc = Nokogiri::HTML(open("https://www.vegas.com/transportation/free-parking-las-vegas/"))
      
                            name = doc.css("p a").text
                            description = doc.css("p").text
                            url = doc.xpath('//p/a/@href').text
                            details = {url: url, description: description}
                            VegasParking::TheStrip.new(name, details)
  end
  
  def self.names
    
            doc = Nokogiri::HTML(open("https://www.vegas.com/transportation/free-parking-las-vegas/"))
      
                            spots = doc.css("p a")
                          
  end
  
  def self.detail
     doc = Nokogiri::HTML(open("https://www.vegas.com/transportation/free-parking-las-vegas/"))
     
                            info = doc.css("p")
  end

def self.url
   doc = Nokogiri::HTML(open("https://www.vegas.com/transportation/free-parking-las-vegas/"))
   
   link = doc.xpath('//p/a/@href')
  end
end