class ShopItem < ActiveRecord::Base
  mount_uploader :image, SmallpicUploader


end
