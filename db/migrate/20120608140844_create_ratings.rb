class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.string :smell
      t.string :look
      t.string :taste
      t.string :feel
      t.string :overall
      t.string :story

      t.timestamps
    end
  end
end
