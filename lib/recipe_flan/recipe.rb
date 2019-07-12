class RecipeFlan::Recipe
  attr_accessor :name , :ingredients , :directions , :url
  
  def self.all 
   self.scrape_recipe
  end

  def self.scrape_recipe
    recipes = []
   
    recipes << self.scrape_foodnetwork
    recipes << self.scrape_allrecipes
    
    recipes
  end

  def self.scrape_foodnetwork
    doc = Nokogiri::HTML(open(“https://www.foodnetwork.com/recipes/tyler-florence/flan-recipe-1914016”))
     
    recipe_1 = self.new
    recipe_1.name = 
    recipe_1.ingredients =
    recipe_1.directions =
    recipe_1.url =
    
    recipe_1
  end 

  def self.scrape_allrecipes
    doc = Nokogiri::HTML(open(“https://www.allrecipes.com/recipe/20979/spanish-flan/”))
    
    recipe_2 = self.new
    recipe_2.name = 
    recipe_2.ingredients =
    recipe_2.directions =
    recipe_2.url =

    recipe_2 
  end 
end