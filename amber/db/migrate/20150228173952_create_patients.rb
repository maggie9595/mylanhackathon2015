class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password
      t.string :email
      t.string :phone
      t.boolean :active

      t.timestamps
    end
  end
end
