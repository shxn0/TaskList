class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :task_name, null: false
      t.date :deadline, null: false
      t.boolean :status, default: false, null: false
      t.timestamps
    end
  end
end
