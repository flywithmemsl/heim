class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.string :name
      t.datetime :date
      t.string :city
      t.string :place
      t.string :place_link
      t.string :buy_link
      t.string :price
      t.string :masters
      t.string :vk_link
      t.string :fb_link
      t.string :illustration

      t.timestamps null: false
    end
  end
end
