class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :purpose
      t.integer :floor
      t.string :room_number
      t.integer :number_of_windows, default: 1
      t.boolean :air_conditioning, default:  true
      t.boolean :cable_tv, default:  true

      t.boolean :refrigerator, default: false
      t.boolean :kitchen, default: false
      t.boolean :fan, default: false
      t.boolean :room_service, default:  true
      t.boolean :daliy_housekeeping, default:  true

      t.integer :max_number_of_guests, default: 2
      t.decimal :room_price_per_night
      
      t.timestamps
    end
  end
end
