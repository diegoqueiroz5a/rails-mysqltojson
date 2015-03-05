class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.string :query
      t.string :format
      t.string :preppend
      t.string :append
      t.string :separator

      t.timestamps null: false
    end
  end
end
