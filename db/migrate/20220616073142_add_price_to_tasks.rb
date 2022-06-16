class AddPriceToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :price, :integer
  end
end
