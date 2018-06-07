json.extract! rumor, :id, :title, :body, :created_at, :updated_at
json.url rumor_url(rumor, format: :json)
