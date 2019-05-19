class CreateFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :facilities do |t|
      #t.string :name
      #t.string :tagline
      #t.text :description
      t.integer :position
      t.string :status
      #hours_operational 
      t.timestamps
    end
  
     reversible do |dir|
        dir.up do
          Facility.create_translation_table! name: 
            :string, tagline: :string, description: :text
        end

        dir.down do
          Facility.drop_translation_table!
        end
     end
  end    
end
