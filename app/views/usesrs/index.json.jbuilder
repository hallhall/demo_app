json.array!(@usesrs) do |usesr|
  json.extract! usesr, :name, :email
  json.url usesr_url(usesr, format: :json)
end