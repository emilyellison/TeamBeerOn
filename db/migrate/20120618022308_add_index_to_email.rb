class AddIndexToEmail < ActiveRecord::Migration
  def change
    add_index :members, :email, unique: true
  end
end
