class RecipeFlan::Recipe
attr_accessor :name, :ingredients, :directions, :url 

  def self.today
    #scrape Food Network and All Recipe and then return deals based on that data
    #extract the properties 
    #instantiate a recipe
    
    self.scrape_recipes
  end
  
  def self.scrape_recipes  
    recipe = []
    
    recipes << self.scrape_foodnetwork
    
    
    #recipe_1 = self.new
    #recipe_1.name = "Food Network Flan Created By Tyler Florence"
    #recipe_1.ingredients = "milk,sugar"
    #recipe_1.directions = "turn on oven"
    #recipe_1.url = "https://www.foodnetwork.com/recipes/tyler-florence/flan-recipe-1914016"
    
    #recipe_2 = self.new
    #recipe_2.name = "All Recipe Flan Created By ASOTO"
    #recipe_2.ingredients = "milk,sugar"
    #recipe_2.directions = "turn on oven"
    #recipe_2.url = "https://www.allrecipes.com/recipe/20979/spanish-flan"
    
    recipes
  end
  
  def self.scrape_woot 
    doc = Nokogiri::HTML(open("https://www.foodnetwork.com/recipes/tyler-florence/flan-recipe-1914016"))
    
  end
  
end