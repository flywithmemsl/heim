class AddAboutToTeammates < ActiveRecord::Migration
  def change
    add_reference :teammates, :about, index: true
  end
end
