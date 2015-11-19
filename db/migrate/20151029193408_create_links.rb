class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|   # need user ID?
      t.string :title, null: false 
      t.string :url, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end
end
