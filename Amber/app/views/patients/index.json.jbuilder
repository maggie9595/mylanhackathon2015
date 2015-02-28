json.array!(@patients) do |patient|
  json.extract! patient, :id, :first_name, :last_name, :username, :password, :email, :phone, :active
  json.url patient_url(patient, format: :json)
end
