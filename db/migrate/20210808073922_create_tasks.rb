class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.date :start
      t.date :end
      t.string :allday

      t.timestamps
    end
  end
end
