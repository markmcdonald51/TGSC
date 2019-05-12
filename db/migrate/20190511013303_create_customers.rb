class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.references :membership_level, foreign_key: true
      t.string :aasm_state
      t.date :last_pay_date
      t.date :member_since
      t.string :country_of_citizenship

      t.timestamps
    end
  end
end
