class AddFieldsToIndexPage < ActiveRecord::Migration
  def change
    add_column :index_pages, :left_block_tittle, :string
    add_column :index_pages, :left_block_text, :string
    add_column :index_pages, :right_link_text, :string
  end
end
