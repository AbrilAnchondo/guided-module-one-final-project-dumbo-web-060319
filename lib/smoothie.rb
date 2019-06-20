class Smoothie < ActiveRecord::Base
    has_many :smoothie_ingredients
    has_many :ingredients, through: :smoothie_ingredients

    #returns number of calories in a smoothie
    def number_of_calories
        self.ingredients.sum("calories")
    end

    #list all smoothies
    def self.all_smoothies
        self.all.map do |smoothie|
            smoothie.name 
        end
    end

    #list all calorie counts
    def self.all_calories
        self.all.map do |smoothie|
            smoothie.number_of_calories
        end
    end

    #list of smoothies with less than 300 calories
    def self.less_than_250
        self.all.select do |smoothie|
            smoothie.number_of_calories < 250
        end
    end

    #list of smoothies with less than argument
    def self.calories_less_than(amount)
        self.all.select do |smoothie|
            smoothie.number_of_calories < amount
        end
    end

    #doesn't work
    #list smoothies with a given ingredient
    def self.find_with_ingredient(choice)
        self.all.select do |smoothie|
            smoothie.ingredients == choice
        end
    end

    #returns an array of all ingredient names in a smoothie
    def ingredient_names
        self.ingredients.map do |ing|
            ing.name
        end
    end

    #checks if smoothie has an ingredient
    def has_ingredient?(ingredient_name)
        ingredient_names.include?(ingredient_name)
    end

    

    #add ingredient to a smoothie
    def add_ingredient_by_name(new_ingredient)
       #self.ingredients < Ingredient.find_ingredient_by_name(new_ingredient)
    end

    



    
end