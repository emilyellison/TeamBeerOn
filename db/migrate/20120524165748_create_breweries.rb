class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :city
      t.string :address
      t.string :state
      t.string :country
      t.string :website

      t.timestamps
    end
  end
end
