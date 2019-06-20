class CLI 
    def initialize
        @prompt = TTY::Prompt.new
        #@current_user = nil
    end

    def greet
        puts `clear`
        puts "Welcome to SMOOTHIE LAND!"
        sleep(2.5)
        #@current_user = @prompt.ask("What is your name?")
    end

    def main_menu
        puts `clear`
        @prompt.select("What would you like to do today?") do |menu|
            menu.choice "See all smoothies", -> { show_all_smoothies }
            menu.choice "See smoothies with less than 250kCal", -> { less_than_250 }
            menu.choice "Create a smoothie", -> { create_smoothie }
            menu.choice "Update a smoothie", -> { update_smoothie }            
            menu.choice "Delete a smoothie", -> { delete_smoothie }
            menu.choice "Quit"
        end
    end

    def show_all_smoothies
        puts `clear`
        @prompt.select("Take a look at the list of smoothie recipes:") do |menu|
            Smoothie.all.each do |smoothie|
                menu.choice smoothie.name, -> { show_smoothie_detail(smoothie) }
            end
            menu.choice "<< Back", -> { main_menu }
        end        
    end

    def show_smoothie_detail(smoothie)
        total_calories = 0
        puts "==================="
        puts smoothie.name
        puts "==================="
        smoothie.ingredients.each do |ingredient|
            total_calories += ingredient.calories
            puts "#{ingredient.name} (#{ingredient.calories})"
            sleep(0.5)
        end
        puts "Total Calories #{total_calories}kCal"
        @prompt.select('') { |menu| menu.choice "Main Menu", -> { main_menu } }
    end

    def create_smoothie2
        puts `clear`
        smoothie_attributes = {
            name: PROMPT.ask('Give a name to your smoothie:'),
            ingredients: PROMPT.ask('Please list your ingredients:'),
        }
        new_smoothie = Smoothie.create(smoothie_attributes)
        menu.choice "<< Back", -> { main_menu }
    end

    def create_smoothie
        puts `clear`
        smoothie_name = @prompt.ask('Give a name to your smoothie:')
        Smoothie.create(:name => smoothie_name)
    end

    def update_smoothie
        puts `clear`
        @prompt.select("Which smoothie would you like to update") do |menu|
            Smoothie.all.each do |smoothie|
                menu.choice smoothie.name, -> { change_ingredients(smoothie) }
            end
            menu.choice "<< Back", -> { main_menu }
        end
    end
    
    def change_ingredients(smoothie)
        puts `clear`
        @prompt.select("What whould you like to do:") do |menu|
            menu.choice "Add an ingredient"
            menu.choice "Remove an ingredient", -> { choose_ingredient_to_remove(smoothie) }
        end
    end

    def choose_ingredient_to_add(smoothie)
        puts `clear`

    end

    def add_ingredient(smoothie, ingredient)
    end

    def choose_ingredient_to_remove(smoothie)
        puts `clear`
        @prompt.select("Which ingredient would you like to remove from #{smoothie.name}?") do |menu|
            smoothie.ingredients.each do |ingredient|
                menu.choice ingredient.name, -> { remove_ingredient(smoothie, ingredient) }
            end
            menu.choice "<< Back", -> { main_menu }
        end
    end

    def remove_ingredient(smoothie, ingredient)
        smoothie.ingredients.delete(ingredient)
        choose_ingredient_to_remove(smoothie)
    end

   
    def delete_smoothie
        puts `clear`
        @prompt.select("Which Smoothie would you like to delete?") do |menu|
            Smoothie.all.each do |smoothie|
                menu.choice smoothie.name, -> { smoothie.destroy; main_menu }
            end
            menu.choice "<< Back", -> { main_menu }
        end
    end

    def less_than_250
        puts `clear`
        light_smoothies = Smoothie.less_than_250
        light_smoothies.each do |smoothie|
            puts "#{smoothie.name} #{smoothie.number_of_calories}kCal"
        end
        @prompt.select('') { |menu| menu.choice "Main Menu", -> { main_menu } }
    end
        

end

    



    #menu.choice "Exit", -> { "See you next time!" }

    # def update_smoothie
    #     @prompt.select("Which Smoothie would you like to update?") do |menu|
    #         Smoothie.all.each do |smoothie|
    #             menu.choice smoothie.name, -> { smoothie.ingredients.up
    # end
