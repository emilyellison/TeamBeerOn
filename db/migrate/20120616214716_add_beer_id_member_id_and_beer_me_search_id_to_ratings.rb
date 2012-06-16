class AddBeerIdMemberIdAndBeerMeSearchIdToRatings < ActiveRecord::Migration
  def change
    add_column :ratings, :beer_id, :integer
    add_column :ratings, :member_id, :integer
    add_column :ratings, :beer_me_search_id, :integer
  end
end
