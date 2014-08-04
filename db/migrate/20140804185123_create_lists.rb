class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string 
      t.integer :user_id
      t.integer :movie_list_id

      t.timestamps
    end
  end
end
