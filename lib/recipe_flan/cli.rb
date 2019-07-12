#Our CLI Controller
class RecipeFlan::CLI
  def call 
    puts "Hello There, Here Is Two Flan Dessert Recipes! Which One Is Better for You?"
    list_recipes
    direction
  end
  
  def list_recipes
    puts <<-DOC.gsub /^\s*/, '' #removes the whitespace
    1. Food Network Flan Created By Tyler Florence 
    2. All Recipe Flan Created By ASOTO
    DOC
    @recipes = RecipeFlan::Recipe.all 
    @recipes.each.with_index(1) do |recipe, i|
	  puts " #{i} - #{recipe.name} - #{recipe.ingredients} - #{recipe.directions} "
  end

  def direction
   input = nill
      while input != "exit!"
	  puts "Enter the number for the recipe you want!"
	  input = gets.strip.downcase

    if input.to_i > 0
    the_recipe = @recipe[input.to_i-1]
    puts " #{i} - #{recipe.name} - #{recipe.ingredients} - #{recipe.directions} "
    elsif input == “list” 
      list_recipes
    else
      "Not sure which one is the best? Or picked your favorite already? Type exit."
        end
     end
  end

  
    
end 