class AddUserRefToTasks < ActiveRecord::Migration[6.0]
  def change
    add_reference :tasks, :author, null: false, foreign_key: true
  end
end
