class AddNameToIndexPages < ActiveRecord::Migration
  def change
    add_column :index_pages, :name, :string
  end
end
