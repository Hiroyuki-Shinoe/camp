class AddJapaneseToContents < ActiveRecord::Migration
  def change
    add_column :contents, :japanese, :text
  end
end
