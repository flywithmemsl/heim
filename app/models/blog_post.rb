class BlogPost < ActiveRecord::Base
  belongs_to :category

  mount_uploader :smallpic, SmallpicUploader
  mount_uploader :illustration, IllustrationUploader


end
