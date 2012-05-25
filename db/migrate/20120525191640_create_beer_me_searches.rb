class CreateBeerMeSearches < ActiveRecord::Migration
  def change
    create_table :beer_me_searches do |t|
      t.string :style
      t.integer :acidic
      t.integer :clean
      t.integer :creamy
      t.integer :crisp
      t.integer :hoppy
      t.integer :malty
      t.integer :rich
      t.integer :smooth
      t.integer :bitter
      t.integer :earthy
      t.integer :sour
      t.integer :spicy
      t.integer :sweet
      t.integer :tart
      t.integer :banana
      t.integer :caramel
      t.integer :citrus
      t.integer :chocolate
      t.integer :cloves
      t.integer :coffee
      t.integer :floral
      t.integer :fruity
      t.integer :grapefruit
      t.integer :lemon
      t.integer :nutty
      t.integer :pine
      t.integer :smoky
      t.integer :toffee
      t.integer :vanilla
      t.integer :wheat
      t.integer :belgian

      t.timestamps
    end
  end
end
