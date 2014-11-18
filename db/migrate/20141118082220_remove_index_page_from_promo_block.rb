class RemoveIndexPageFromPromoBlock < ActiveRecord::Migration
  def change
    remove_reference :promo_blocks, :IndexPage, index: true
  end
end
