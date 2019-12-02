class VegasParking::CLI
  
  def call
    puts "Welcome to Vegas. How can I help you park today?"
    list_spots
    spots
    goodbye
  end
  
  def list_spots
    puts "Here is a list of all of the free parking spots at great locations!"
    
  end
  
  def spots
    puts "Please enter your spot selection. Type 'list' for a list of spots, 'any' for a random selection, or exit to end session."
    
      input = nil
    
    while input != "exit"
        input = gets.strip.downcase
      case input
        when "1"
          puts "Great selection! Heres more info.."
        when "2"
          puts "Nice one! Check out this information.."
        when "list"
          list_spots
        when "any"
          any_spot
        else
          puts "Your selection was not valid please choose one of the following selections from the menu:"
          menu
      end
    end
  end
  
  def any_spot
    puts "Heres a nice one you may like! Check it out.."
  end
  
  def menu
    puts "1. List Spots"
    puts "2. Any Spot"
  end
  
  def goodbye
    puts "Thanks for stopping by :) . See ya nextinme!."
  end
end  
