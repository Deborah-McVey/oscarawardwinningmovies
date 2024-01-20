require_relative "./api.rb"

class CLI
  def run
    system("clear")
    greet
    while menu != "exit"
    end
    goodbye
  end

  def greet
    puts "Welcome to the Oscar Winning Films CLI!"
  end
    def goodbye
      puts "Goodbye!"
  end
  def menu
    puts "\n Please enter a number to see the Oscar winning films for that year: \n\n"
input_year = gets.chomp find_films_by_year(input_year)
    input_year
  end

  def find_films_by_year(year)
    puts "\n Let me find the Oscar winning films for #{year}... \n\n"
API.find_films_by_year(year)
  end
end