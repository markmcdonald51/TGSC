class CreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :assets do |t|
      t.string  :data_file_name, null: false
      t.string  :data_content_type
      t.integer :data_file_size

      t.integer :assetable_id, null: false
      t.string  :assetable_type, limit: 30, null: false
      t.string  :type, limit: 30

      t.string  :guid, limit: 30, index: true
      t.string  :public_token, limit: 30, index: true

      t.integer :user_id, index: true
      t.integer :sort_order, default: 0
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end

end
