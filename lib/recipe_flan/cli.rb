#Our CLI Controller
class RecipeFlan::CLI
  def call 
    puts "Hello There, Here Is Two Flan Dessert Recipes! Which One Is Better for You?"
    list_recipes
    directions
    goodbye
  end  
 
  def list_recipes
    @recipes = RecipeFlan::Recipe.today
    @recipes.each.with_index(1) do |recipe, i|
      puts "#{i}. Name of Recipe: #{recipe.name} 
      Number of Reviews: #{recipe.reviews}"
    end
  end
  
  def directions
    input = nil 
    while input != "exit"
      puts "Enter the number for the recipe you want either 1 or 2 or type exit:"
      input = gets.strip.downcase
      
      if input.to_i == 1 || input.to_i == 2 
        the_recipe = @recipes[input.to_i-1]
        puts "Name of Recipe: #{the_recipe.name} 
        Ingredients: #{the_recipe.ingredients} 
        Directions: #{the_recipe.directions} 
        Number of Reviews: #{the_recipe.reviews}"
      else 
        puts "Not sure which one is the best? Type one or two again. Or picked your favorite already? Type exit."
      end
    end
  end 
  
  def goodbye
    puts "Goodbye, I hope you enjoy the recipes."
  end
end 