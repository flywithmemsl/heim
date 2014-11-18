class AddMoreLinksToIndexPages < ActiveRecord::Migration
  def change
    add_column :index_pages, :bottom_link, :string
    add_column :index_pages, :bottom_text, :string
    remove_column :index_pages, :bottom
  end
end
