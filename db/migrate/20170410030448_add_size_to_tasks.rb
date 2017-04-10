class AddSizeToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :size, :integer
  end
end
