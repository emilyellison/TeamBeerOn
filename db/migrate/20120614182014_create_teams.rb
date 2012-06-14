class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
