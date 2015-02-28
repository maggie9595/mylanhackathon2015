json.array!(@contacts) do |contact|
  json.extract! contact, :id, :first_name, :last_name, :email, :phone, :patient_id
  json.url contact_url(contact, format: :json)
end
