class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :continent
      t.integer :population
      t.string :size
      t.string :government_type
      t.string :highest_officer

      t.timestamps null: false
    end
  end
end
