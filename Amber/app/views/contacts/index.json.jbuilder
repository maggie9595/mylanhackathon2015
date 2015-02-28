json.array!(@contacts) do |contact|
  json.extract! contact, :id, :first_name, :last_name, :patient_id, :email, :phone
  json.url contact_url(contact, format: :json)
end
