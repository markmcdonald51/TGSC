json.extract! person, :id, :first_name, :last_name, :birth_date, :email, :mobile_phone, :full_address, :personable_id, :personable_type, :lat, :lng, :created_at, :updated_at
json.url person_url(person, format: :json)
