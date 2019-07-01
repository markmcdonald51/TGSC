class CreateRoomTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :room_types do |t|
      t.string :name
      t.decimal :price_per_use
      t.decimal :meter_length
      t.decimal :meter_width
      t.string :tag_line
      t.text :description
      t.boolean :in_service
      t.integer :position
      t.timestamps
    end

    reversible do |dir|
        dir.up do
          RoomType.create_translation_table! name: 
            :string, tagline: :string, description: :text
        end

        dir.down do
          #RoomType.drop_translation_table!
        end
     end
  end
end
