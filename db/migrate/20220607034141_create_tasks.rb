class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :store
      t.string :name
      t.integer :protein
      t.integer :calorie
      t.string :image

      t.timestamps
    end
  end
end
