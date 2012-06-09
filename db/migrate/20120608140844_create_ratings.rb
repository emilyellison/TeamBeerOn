class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :score
      t.text :smell
      t.text :look
      t.text :taste
      t.text :feel
      t.text :overall
      t.text :story

      t.timestamps
    end
  end
end
