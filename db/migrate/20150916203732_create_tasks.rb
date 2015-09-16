class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, null: false, limit: 300
      t.boolean :complete, default: false
      t.timestamps null: false
    end
  end
end
