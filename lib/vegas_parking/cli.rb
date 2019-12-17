require 'pry'

class VegasParking::CLI
  
  def call
    puts "###################################################"
    puts "# Welcome to Vegas. How can I help you park today?#"
    puts "###################################################"        
   list_spots
   select_spot
  end
  
  def link
      puts"####################################"
      puts"#Here is a list of all of the url's#"
      puts"####################################"
     @url = VegasParking::Scraper.url
     @url.each.with_index(1) do | link, i|
           puts "#{i} #{link}" 
    end
  end
  
  def list_spots
  puts  "Please enter your spot selection. Type 'list spots' => for a list of spots; 'Details' => for more info; Link => for the      website; Menu at anytime or exit to end session."
     @spots = VegasParking::Scraper.names
     @spots.each.with_index(1) do | place, i|
           puts "#{i} #{place.name}"
    end
          puts "***Pick a number any number :) ***"
          puts "***Remember, you can press menu at anytime***" 
   end
   
   def select_spot
     @info = VegasParking::Scraper.detail
     @spots = VegasParking::Scraper.names
     @url = VegasParking::Scraper.url
     input = nil
     
    while input != "exit"
        input = gets.strip.downcase
     
           if input.to_i > 0
      parking_spot = @info[input.to_i-1]
      website = @url[input.to_i-1]
        puts "#{parking_spot.text} -- #{website}"
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
    exit!
  end
end

