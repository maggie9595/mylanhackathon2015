class CreateContacts < ActiveRecord::Migration
def change
	drop_table :contacts
create_table :contacts do |t|
t.string :first_name
t.string :last_name
t.string :patient_id
t.string :email
t.string :phone
t.timestamps
end
end
end