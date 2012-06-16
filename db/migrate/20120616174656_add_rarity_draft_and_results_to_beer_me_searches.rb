class AddRarityDraftAndResultsToBeerMeSearches < ActiveRecord::Migration
  def change
    add_column :beer_me_searches, :rarity, :boolean
    add_column :beer_me_searches, :draft, :boolean
    add_column :beer_me_searches, :available_beer, :string
  end
end
