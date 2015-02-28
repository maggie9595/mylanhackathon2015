json.array!(@prescriptions) do |prescription|
  json.extract! prescription, :id, :dosage, :active, :time, :medication_id, :patient_id
  json.url prescription_url(prescription, format: :json)
end
