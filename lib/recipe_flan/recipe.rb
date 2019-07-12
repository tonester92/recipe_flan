class RecipeFlan::Recipe
attr_accessor :name, :ingredients, :directions, :url 

  def self.today
    #scrape Food Network and All Recipe and then return deals based on that data
    #extract the properties 
    #instantiate a recipe
    
    self.scrape_recipes
  end
  
  def self.scrape_recipes  
    recipes = []
    
    recipes << self.scrape_foodnetwork
    recipes << self.scrape_allrecipes
    
    recipes
  end
  
  def self.scrape_foodnetwork
    doc = Nokogiri::HTML(open("https://www.foodnetwork.com/recipes/tyler-florence/flan-recipe-1914016"))
    
    recipe_1 = self.new  
    recipe_1.name = doc.search("h1.o-AssetTitle__a-Headline").text.gsub("\n","").strip
    recipe_1.ingredients = doc.search("div.o-Ingredients__m-Body").text.gsub("\n","").strip
    recipe_1.directions = doc.search("div.o-Method__m-Step").text.gsub("\n","").strip
    recipe_1.url = "https://www.foodnetwork.com/recipes/tyler-florence/flan-recipe-1914016"
    binding.pry
    
    recipe_1
  end
  
  def self.scrape_allrecipes
    doc = Nokogiri::HTML(open("https://www.allrecipes.com/recipe/20979/spanish-flan/"))
    
    recipe_2 = self.new  
    recipe_2.name = doc.search("h1.recipe-summary__h1").text.strip
    recipe_2.ingredients = 
    recipe_2.directions = 
    recipe_2.url =
    binding.pry
    
    recipe_2
  end
end