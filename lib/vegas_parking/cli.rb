require 'pry'

class VegasParking::CLI
  
  def call
    puts "Welcome to Vegas. How can I help you park today?"
   menu
  end
  
  def link
      puts "Here is a list of all of the url's"
     @url = VegasParking::Scraper.url
     @url.each.with_index(1) do | link, i|
           puts "#{i} #{link}" 
    end
  end
  
  def list_spots
    puts "Please enter your spot selection. Type 'list' for a list of spots, 'any' for a random selection, or exit to end session."
     @spots = VegasParking::Scraper.names
     @spots.each.with_index(1) do | place, i|
           puts "#{i} #{place.text}"
    end
   end
   
   def select_spot
     @spots = VegasParking::Scraper.names
     input = nil
     
    while input != "exit"
        input = gets.strip.downcase
     
           if input.to_i > 0
      parking_spot = @spots[input.to_i-1]
        puts "#{parking_spot.text}"
      elsif input == "list spots"
        list_spots
        elsif input == "details"
          information
        elsif input == "menu" 
          menu
          elsif input == "exit"
          goodbye
          elsif input == "link"
          link
        else
          puts "Your selection was not valid please choose one of the following selections from the menu:"
          menu
      end
    end
  end
  
  
  def menu
    
    puts "List Spots"
    puts "Details"
    puts "Link"
    puts "Exit"
    select_spot
    end
  
  def information
    @info = VegasParking::Scraper.detail
     @info.each.with_index(1) do | info, i|
           puts "#{i} #{info.text}" 
   end
  end
  
  def goodbye
    puts "Thanks for stopping by :) . See ya next Time!."
  end
end

