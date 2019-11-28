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
    puts "Please enter your spot selection, or exit to end session."
    
      input = nil
    
    while input != "exit"
        input = gets.strip.downcase
      case input
        when "1"
          puts "Great selection! Heres more info.."
        when "2"
          puts "Nice one! Check out this information.."
      end
    end
  end
  
  def goodbye
    puts "Thanks for stopping by :) . See ya nextinme!."
  end
end  
