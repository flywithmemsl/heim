class ChangeEventColumnType2 < ActiveRecord::Migration
  def change
    change_column :events, :date,  :string
    add_column :events, :illustration, :string
  end
end
