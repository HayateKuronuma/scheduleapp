class RemoveMemoFromTasks < ActiveRecord::Migration[5.0]
  def change
    remove_column :tasks, :category, :text
  end
end
