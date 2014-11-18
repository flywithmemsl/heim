class AddPicturesToIndexPages < ActiveRecord::Migration
  def change
    add_column :index_pages, :small_picture, :string
    add_column :index_pages, :left_picture, :string
    add_column :index_pages, :right_picture, :string
    add_column :index_pages, :left_link, :string
    add_column :index_pages, :left_link_text, :string
    add_column :index_pages, :right_block_tittle, :string
    add_column :index_pages, :right_block_text, :string
    add_column :index_pages, :bottom_picture, :string
  end
end
