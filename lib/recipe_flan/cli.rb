#Our CLI Controller
class RecipeFlan::CLI
  def call 
    puts "Hello There, Here Is Two Flan Dessert Recipes! Which One Is Better for You?"
    list_recipes
    direction
    goodbye
  end  
 
  def list_recipes
    @recipes = RecipeFlan::Recipe.today
    @recipes.each.with_index(1) do |recipe, i|
      puts "#{i}. #{recipe.name} - #{recipe.ingredients} - #{recipe.directions} - #{recipe.reviews}"
    end
  end
  
  def direction
    input = nil 
    while input != "exit"
       puts "Enter the number for the recipe you want or type exit to enter:"
      input = gets.strip.downcase
      
      if input.to_i > 0
        the_recipe = @recipes[input.to_i-1]
        puts "#{i}. #{recipe.name} - #{recipe.ingredients} - #{recipe.directions} - #{recipe.reviews}"
      elsif input == "list"
        list_recipes
      else 
        puts "Not sure which one is the best? Or picked your favorite already? Type exit"
      end
    end
  end 
  
  def goodbye
    puts "Which One Is Better for You?"
  end
end 