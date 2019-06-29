json.extract! room, :id, :purpose, :floor, :room_number, :number_of_windows, :air_conditioning, :cable_tv, :room_service, :refrigerator, :kitchen, :fan, :daliy_housekeeping, :max_number_of_guests, :created_at, :updated_at
json.url room_url(room, format: :json)
