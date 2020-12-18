class CreateCalories < ActiveRecord::Migration[5.2]
  def change
    create_table :calories do |t|
      t.string :name
      t.text :content
      t.integer :calorie_morning
      t.integer :calorie_lunch
      t.integer :calorie_night
      t.timestamps
    end
  end
end
