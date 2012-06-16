class AddBarIdToBeerMeSearch < ActiveRecord::Migration
  def change
    add_column :beer_me_searches, :bar_id, :integer
  end
end
