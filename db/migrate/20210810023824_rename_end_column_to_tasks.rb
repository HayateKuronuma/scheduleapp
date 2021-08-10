class RenameEndColumnToTasks < ActiveRecord::Migration[5.0]
  def change
    rename_column :tasks, :end, :finish_day
  end
end
