class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.integer :category_id
      t.text :body

      t.timestamps
    end
  end
end
