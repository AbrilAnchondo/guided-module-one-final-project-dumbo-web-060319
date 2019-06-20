class Ingredient < ActiveRecord::Base
    has_many :smoothie_ingredients
    has_many :smoothies, through: :smoothie_ingredients
    

    #returns what smoothies it is in


    #add ingredient

    def self.find_ingredient_by_name(ingredient_name)
        self.all.select do |ingredient|
            ingredient.name == ingredient_name
        end
    end
    
end