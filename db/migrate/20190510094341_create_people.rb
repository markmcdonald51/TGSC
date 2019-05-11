class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.string :email
      t.string :mobile_phone
      t.string :full_address
      t.references :personable, polymorphic: true
      t.decimal :lat
      t.decimal :lng

      t.timestamps
    end
  end
end
