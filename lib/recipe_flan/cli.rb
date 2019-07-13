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
      puts "#{i}. Name: #{recipe.name} 
      Ingredients: #{recipe.ingredients} 
      Directions: #{recipe.directions} 
      Reviews: #{recipe.reviews}"
    end
  end
  
  def directions
    input = nil 
    while input != "exit"
      puts "Enter the number for the recipe you want or type exit to enter:"
      input = gets.strip.downcase
      
      if input.to_i > 0
        the_recipe = @recipes[input.to_i-1]
        puts "Name: #{the_recipe.name} 
        Ingredients: #{the_recipe.ingredients} 
        Directions: #{the_recipe.directions} 
        Reviews: #{the_recipe.reviews}"
      elsif input == "list"
        list_recipes
      else 
        puts "Not sure which one is the best? Type Number again. Or picked your favorite already? Type exit"
      end
    end
  end 
  
  def goodbye
    puts "Goodbye, I hope you enjoy the recipes."
  end
end 