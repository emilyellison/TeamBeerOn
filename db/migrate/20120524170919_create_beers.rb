class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.integer :brewer_id
      t.string :style
      t.float :abv
      t.float :ibu
      t.float :srm
      t.integer :acidic, default: 0
      t.integer :clean, default: 0
      t.integer :creamy, default: 0
      t.integer :crisp, default: 0
      t.integer :hoppy, default: 0
      t.integer :malty, default: 0
      t.integer :rich, default: 0
      t.integer :smooth, default: 0
      t.integer :bitter, default: 0
      t.integer :earthy, default: 0
      t.integer :sour, default: 0
      t.integer :spicy, default: 0
      t.integer :sweet, default: 0
      t.integer :tart, default: 0
      t.integer :banana, default: 0
      t.integer :caramel, default: 0
      t.integer :citrus, default: 0
      t.integer :chocolate, default: 0
      t.integer :cloves, default: 0
      t.integer :coffee, default: 0
      t.integer :floral, default: 0
      t.integer :fruity, default: 0
      t.integer :grapefruit, default: 0
      t.integer :lemon, default: 0
      t.integer :nutty, default: 0
      t.integer :pine, default: 0
      t.integer :smoky, default: 0
      t.integer :toffee, default: 0
      t.integer :vanilla, default: 0
      t.integer :wheat, default: 0
      t.integer :belgian, default: 0
      
      
      
      t.timestamps
    end
  end
end
