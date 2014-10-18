class AddCityToPartner < ActiveRecord::Migration
  def change
    add_reference :partners, :city, index: true
  end
end
