class CreateMoviesActors < ActiveRecord::Migration
  def change
    create_table :movies_actors do |t|
      t.belongs_to :movies
      t.belongs_to :actors

      t.timestamps
    end
  end
end
