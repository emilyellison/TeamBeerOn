class AddMemberIdToBeerMeSearch < ActiveRecord::Migration
  def change
    add_column :beer_me_searches, :member_id, :integer
  end
end
