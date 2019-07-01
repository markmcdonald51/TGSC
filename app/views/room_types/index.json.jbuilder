json.set! :data do

  json.array! @room_types do |room_type|
    json.ssortable_id room_type.sortable_id
    json.partial! 'room_types/room_type', room_type: room_type
    json.url  "
              #{link_to 'Show', room_type }
              #{link_to 'Edit', edit_room_type_path(room_type)}
              #{link_to 'Destroy', room_type, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end
