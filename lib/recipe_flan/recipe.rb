 class RecipeFlan::Recipe
  
  def self.today
    puts <<-DOC.gsub /^\s*/, '' #removes the whitespace
    1. Food Network Flan Created By Tyler Florence 
    2. All Recipe Flan Created By ASOTO
    DOC
    
    recipe_1 = self.new
    recipe_1.name = "Food Network Flan Created By Tyler Florence"
    recipe_1.ingredients = "milk,sugar"
    recipe_1.directions = "turn on oven"
    recipe_1.url = "https://www.foodnetwork.com/recipes/tyler-florence/flan-recipe-1914016"
    
    recipe_2 = self.new
    recipe_2.name = "All Recipe Flan Created By ASOTO"
    recipe_2.ingredients = "milk,sugar"
    recipe_2.directions = "turn on oven"
    recipe_2.url = "https://www.allrecipes.com/recipe/20979/spanish-flan"
    
  end 
end