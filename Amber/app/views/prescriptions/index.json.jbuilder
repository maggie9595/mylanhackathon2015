json.array!(@prescriptions) do |prescription|
  json.extract! prescription, :id, :patient_id, :dosage, :time, :active, :medication_id
  json.url prescription_url(prescription, format: :json)
end
