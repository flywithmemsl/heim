class CreateEventCities < ActiveRecord::Migration
  def change
    create_table :event_cities do |t|
      t.string :name
      t.string :link
      t.string :place
      t.boolean :active

      t.timestamps
    end
  end
end
