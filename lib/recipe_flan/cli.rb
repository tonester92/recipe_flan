#Our CLI Controller
class RecipeFlan::CLI
  def call 
    puts "Hello There, Here Is Two Flan Dessert Recipes! Which One Is Better for You?"
    list_recipes
  end  
 
  def list_recipes
    puts <<-DOC.gsub /^\s*/, '' #removes the whitespace
    1. Food Network Flan Created By Tyler Florence 
    2. All Recipe Flan Created By ASOTO
    DOC
  end
end 