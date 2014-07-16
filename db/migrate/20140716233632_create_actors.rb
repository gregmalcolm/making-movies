class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.string :gender
      t.string :bio
      t.date :born
      t.string :timestamps

      t.timestamps
    end

    add_index :actors, :name
    add_index :actors, :gender
    add_index :actors, :born
  end
end
