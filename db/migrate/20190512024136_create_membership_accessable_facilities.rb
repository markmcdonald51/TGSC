class CreateMembershipAccessableFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :membership_accessable_facilities do |t|
      t.references :facility, foreign_key: true
      t.references :membership_level, foreign_key: true

      t.timestamps
    end
  end
end
