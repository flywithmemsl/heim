class AddAliasToCountry < ActiveRecord::Migration
  def change
    add_column :countries, :alias, :string
  end
end
