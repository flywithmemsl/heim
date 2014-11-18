class IndexPage < ActiveRecord::Base

  has_many :promo_blocks

  mount_uploader :fullscreenpic, IllustrationUploader
  mount_uploader :small_picture, IllustrationUploader
  mount_uploader :left_picture, IllustrationUploader
  mount_uploader :right_picture, IllustrationUploader
  mount_uploader :bottom_picture, IllustrationUploader

end
