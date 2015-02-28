json.array!(@medications) do |medication|
  json.extract! medication, :id, :name, :form, :prod_number, :active_ingredients, :market_status, :TE_code, :company
  json.url medication_url(medication, format: :json)
end
