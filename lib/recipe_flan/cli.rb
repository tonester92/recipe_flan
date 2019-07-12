#Our CLI Controller
class RecipeFlan::CLI
  def call 
    puts "Hello There, Here Is Two Flan Dessert Recipes! Which One Is Better for You?"
    list_recipes
    direction
    goodbye
  end  
 
  def list_recipes
    puts <<-DOC.gsub /^\s*/, '' #removes the whitespace
    1. Food Network Flan Created By Tyler Florence 
    2. All Recipe Flan Created By ASOTO
    DOC
    @recipes = RecipeFlan::Recipe.today
  end
  
  def direction
    input = nil 
    while input != "exit"
       puts "Enter the number for the recipe you want or type exit to enter:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on recipe 1..."
      when "2"
        puts "More info on recipe 2..."
      when "list"
        list_recipes
      else
        puts "Not sure what you want, type or exit."
      end
    end
  end 
  
  def goodbye
    puts "Which One is Better for You?"
  end
end 