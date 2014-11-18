class AddText5ToIndexPages < ActiveRecord::Migration
  def change
    add_column :index_pages, :text5, :text
  end
end
