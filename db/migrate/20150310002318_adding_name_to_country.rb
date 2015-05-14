class AddingNameToCountry < ActiveRecord::Migration
  def change
  	change_table :countries do |t|
  		t.string :name
  	end
  end
end
