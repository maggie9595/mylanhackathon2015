class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.string :patient_id
      t.string :dosage
      t.time :time
      t.boolean :active
      t.string :medication_id

      t.timestamps
    end
  end
end
