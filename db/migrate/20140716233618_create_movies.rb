class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :year
      t.string :description

      t.timestamps
    end

    add_index :movies, :name
    add_index :movies, :year
  end
end
