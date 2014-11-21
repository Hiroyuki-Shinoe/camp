class CreateStorages < ActiveRecord::Migration
  def change
    create_table :storages do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
