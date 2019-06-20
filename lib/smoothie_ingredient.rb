class SmoothieIngredient < ActiveRecord::Base
    belongs_to :smoothie
    belongs_to :ingredient
end 