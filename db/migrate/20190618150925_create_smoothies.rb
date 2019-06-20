class CreateSmoothies < ActiveRecord::Migration[5.0]
  def change
    create_table :smoothies do |t|
      t.string :name
    end
  end
end
