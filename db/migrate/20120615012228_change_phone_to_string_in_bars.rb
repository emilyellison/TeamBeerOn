class ChangePhoneToStringInBars < ActiveRecord::Migration
  def up
    change_column :bars, :phone, :string 
  end

  def down
    change_column :bars, :phone, :integer
  end
end
