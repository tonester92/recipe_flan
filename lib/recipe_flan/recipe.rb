class RecipeFlan::Recipe
attr_accessor :name, :ingredients, :directions, :reviews, :url

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
    
    recipe = self.new  
    recipe.name = doc.search("h1.o-AssetTitle__a-Headline").text.strip
    recipe.ingredients = doc.search("div.o-Ingredients__m-Body").text.strip
    recipe.directions = doc.search("div.o-Method__m-Body").text.strip
    recipe.reviews = "73 reviews"
    recipe.url = "https://www.foodnetwork.com/recipes/tyler-florence/flan-recipe-1914016"
    
    recipe
  end
  
  def self.scrape_allrecipes
    doc = Nokogiri::HTML(open("https://www.allrecipes.com/recipe/20979/spanish-flan/"))
    
    recipe = self.new  
    recipe.name = doc.search("h1.recipe-summary__h1").text.strip
    recipe.ingredients = doc.search("li.checkList__line").text.strip
    recipe.directions = doc.search("span.recipe-directions__list--item").text.strip
    recipe.reviews = doc.search("span.review-count").text.strip
    recipe.url = "https://www.allrecipes.com/recipe/20979/spanish-flan/"
    
    recipe
  end
end