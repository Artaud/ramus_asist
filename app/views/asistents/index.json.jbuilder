json.array!(@asistents) do |asistent|
  json.extract! asistent, :id, :jmeno, :prijmeni, :email, :telefon
  json.url asistent_url(asistent, format: :json)
end
