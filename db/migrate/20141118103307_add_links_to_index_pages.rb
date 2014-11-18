class AddLinksToIndexPages < ActiveRecord::Migration
  def change
    add_column :index_pages, :right_block_link, :string
  end
end
