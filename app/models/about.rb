class About < ActiveRecord::Base
  has_many :teammates

  mount_uploader :illustration, IllustrationUploader

  def name
    left_colum_text.split("\n").first
  end



end
