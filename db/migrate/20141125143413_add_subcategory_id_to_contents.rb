class AddSubcategoryIdToContents < ActiveRecord::Migration
  def change
    add_column :contents, :subcategory_id, :integer
  end
end
