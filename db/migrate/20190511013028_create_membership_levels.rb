class CreateMembershipLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :membership_levels do |t|
      #t.string :name
      t.string :position
      #t.text :description
      t.string :duration
      t.decimal :usd_cost

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        MembershipLevel.create_translation_table! name: 
          :string,  description: :text
      end

      dir.down do
        MembershipLevel.drop_translation_table!
      end
    end
  
  end
  
end
