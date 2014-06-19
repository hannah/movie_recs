class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title, null: :false
      t.integer :date, null: :false
      t.string :director
      t.text :description
      t.timestamps
    end
  end
end
