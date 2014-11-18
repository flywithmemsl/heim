class RenameNameInIndexPages < ActiveRecord::Migration
  def change
    add_column :index_pages, :alias, :string

  end
end
