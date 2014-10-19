class RemoveAliasFromEvent < ActiveRecord::Migration
  def change
    remove_column :events, :alias, :string
  end
end
