class AddUserIdCalories < ActiveRecord::Migration[5.2]
  def change
    add_column :calories, :user_id, :integer
    add_column :users, :remember_created_at, :datetime
  end
end
