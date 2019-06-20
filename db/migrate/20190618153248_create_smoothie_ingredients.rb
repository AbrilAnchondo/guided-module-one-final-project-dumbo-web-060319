class CreateSmoothieIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :smoothie_ingredients do |t|
      t.integer :smoothie_id, foreign_key: true
      t.integer :ingredient_id, foreign_key: true
    end
  end
end
