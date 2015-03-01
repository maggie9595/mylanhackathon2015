class CreateApplications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :name
      t.string :form
      t.string :prod_number
      t.string :active_ingredients
      t.string :market_status
      t.string :company
      t.integer :medication_id

      t.timestamps
    end

    create_table :applications do |t|
    	t.belongs_to :medications
  end

  add_index :applications, :medication_id
end
