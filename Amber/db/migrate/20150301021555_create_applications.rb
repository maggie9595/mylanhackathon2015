class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :company
      t.string :medication_id

      t.timestamps
    end
  end
end
