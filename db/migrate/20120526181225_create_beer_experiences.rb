class CreateBeerExperiences < ActiveRecord::Migration
  def change
    create_table :beer_experiences do |t|
      t.integer :beer_id
      t.integer :bar_id
      t.integer :rarity
      t.integer :price
      t.integer :home, default: 0
      t.integer :local, default: 0
      t.integer :draft, default: 0

      t.timestamps
    end
  end
end
