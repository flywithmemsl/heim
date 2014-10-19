class AddCityToBlogPost < ActiveRecord::Migration
  def change
    add_reference :blog_posts, :event_city, index: true
  end
end
