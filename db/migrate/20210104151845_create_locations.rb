class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.decimal :lat
      t.decimal :lng
      t.string :name

      t.timestamps
    end
  end
end
