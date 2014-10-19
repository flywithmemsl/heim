class AddEventToEventCity < ActiveRecord::Migration
  def change
    add_reference :event_cities, :event, index: true
  end
end
