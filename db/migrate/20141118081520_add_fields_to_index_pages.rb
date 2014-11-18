class AddFieldsToIndexPages < ActiveRecord::Migration
  def change
    add_column :index_pages, :header1, :string
    add_column :index_pages, :header2, :string
    add_column :index_pages, :header3, :string
    add_column :index_pages, :bottom, :text
    add_column :index_pages, :fullscreenpic, :string
  end
end
