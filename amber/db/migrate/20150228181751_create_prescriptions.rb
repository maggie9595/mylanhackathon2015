class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.integer :dosage
      t.boolean :active
      t.time :time
      t.string :medication_id
      t.string :patient_id

      t.timestamps
    end
  end
end
