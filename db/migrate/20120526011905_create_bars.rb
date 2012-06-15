class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :phone
      t.string :website
      t.time :open_sunday
      t.time :open_monday
      t.time :open_tuesday
      t.time :open_wednesday
      t.time :open_thursday
      t.time :open_friday
      t.time :open_saturday
      t.time :close_sunday
      t.time :close_monday
      t.time :close_tuesday
      t.time :close_wednesday
      t.time :close_thursday
      t.time :close_friday
      t.time :close_saturday

      t.timestamps
    end
  end
end
