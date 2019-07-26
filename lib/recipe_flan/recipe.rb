class RecipeFlan::Recipe
attr_accessor :name, :ingredients, :directions, :time, :url

  def self.today

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
    
    recipe = self.new  
    recipe.name = doc.search("h1.o-AssetTitle__a-Headline").text.strip
    recipe.ingredients = doc.search("div.o-Ingredients__m-Body").text.strip
    recipe.directions = doc.search("div.o-Method__m-Body").text.strip
    recipe.time = doc.search("ul.o-RecipeInfo__m-Time").text.strip
    recipe.url = "https://www.foodnetwork.com/recipes/tyler-florence/flan-recipe-1914016"
    
    recipe
  end
  
  def self.scrape_allrecipes
    doc = Nokogiri::HTML(open("https://www.allrecipes.com/recipe/20979/spanish-flan/"))
    
    recipe = self.new  
    recipe.name = doc.search("h1.recipe-summary__h1").text.strip
    recipe.ingredients = doc.search("li.checkList__line").text.strip
    recipe.directions = doc.search("span.recipe-directions__list--item").text.strip
    recipe.time = doc.search("span.ready-in-time").text.strip 
    recipe.url = "https://www.allrecipes.com/recipe/20979/spanish-flan/"
    
    recipe
  end
end