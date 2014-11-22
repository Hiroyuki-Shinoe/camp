class ChangecolColumnname < ActiveRecord::Migration
  def change
  	rename_column :contents, :body, :english
  end
end
