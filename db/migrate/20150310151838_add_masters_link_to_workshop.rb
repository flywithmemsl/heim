class AddMastersLinkToWorkshop < ActiveRecord::Migration
  def change
    add_column :workshops, :masters_link, :string
  end
end
