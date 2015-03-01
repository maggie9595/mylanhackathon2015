class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :name
      t.string :form
      t.string :prod_number
      t.string :active_ingredients
      t.string :market_status
      t.string :company

      t.timestamps
    end
  end
end
