json.array!(@applications) do |application|
  json.extract! application, :id, :company
  json.url application_url(application, format: :json)
end
