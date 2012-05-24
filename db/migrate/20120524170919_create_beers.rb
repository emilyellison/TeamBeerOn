class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.integer :brewer_id
      t.string :style
      t.float :abv
      t.float :ibu
      t.float :srm

      t.timestamps
    end
  end
end
