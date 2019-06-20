Smoothie.destroy_all
Ingredient.destroy_all
SmoothieIngredient.destroy_all




strawberry = Ingredient.create(:name => "strawberry", :calories => 30)
kiwi = Ingredient.create(:name => "kiwi", :calories => 100)
mint = Ingredient.create(:name => "mint", :calories => 5)
banana = Ingredient.create(:name => "banana", :calories => 100 )
peanut_butter = Ingredient.create(:name => "peanut butter", :calories => 190)
chocolate_chips = Ingredient.create(:name => "chocolate chips", :calories => 202)
apple = Ingredient.create(:name => "apple", :calories =>100)
cherry = Ingredient.create(:name => "cherry", :calories => 50)
cucumber = Ingredient.create(:name => "cucumber", :calories => 15)
raspberry = Ingredient.create(:name => "raspberry", :calories =>10)
chia_seeds = Ingredient.create(:name => "chia_seeds", :calories => 58)
spinach = Ingredient.create(:name => "spinach", :calories =>60)
peppermint_tea = Ingredient.create(:name => "peppermint_tea", :calories =>5)
almond_milk = Ingredient.create(:name => "almond_milk", :calories => 56)
ice = Ingredient.create(:name => "ice", :calories => 0)
water = Ingredient.create(:name => "water", :calories =>0)


Smoothie.create(:name => "Banana King", :ingredients => [banana, chocolate_chips, peanut_butter, almond_milk, ice])
Smoothie.create(:name => "Strawberry Princess", :ingredients => [strawberry, kiwi, mint, almond_milk, ice])
Smoothie.create(:name => "Blushing Apple", :ingredients => [apple, cherry, cucumber, raspberry, ice, water, chia_seeds])


#strawberry_princess = Smoothie.create(:name => "Strawberry Princess")
#banana_king = Smoothie.create(:name => "Banana King")
#mint_choco_chip = Smoothie.create(:name => "Mint ChocoChip")
#blushing_apple = Smoothie.create(:name => "Blushing Apple")


# add ingredients to "banana king"
#[banana, chocolate_chips, peanut_butter, ice, almond_milk].each do |ingredient|
#banana_king.ingredients << ingredient
# end

#add ingredients to "strawberry_princess"
#[strawberry, kiwi, mint, almond_milk, ice].each do |ingredient|
 #   strawberry_princess.ingredients << ingredient
#end

#add ingredients to "blushing_apple"
#[apple, cherry, cucumber, raspberry, ice, water, chia_seeds].each do |ingredient|
 #   blushing_apple.ingredients << ingredient
#end



# SmoothieIngredient.create(smoothie_id: banana_king.id, ingredient_id: banana.id)

