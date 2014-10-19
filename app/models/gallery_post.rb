class GalleryPost < ActiveRecord::Base
  mount_uploader :image, IllustrationUploader


end
