class AddDescriptionToWorkshop < ActiveRecord::Migration
  def change
    add_column :workshops, :description, :text
  end
end
