class CreateFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :facilities do |t|
      t.string :name
      t.text :description
      t.integer :position
      t.timestamps
    end
  end
end
