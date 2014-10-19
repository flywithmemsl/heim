class Event < ActiveRecord::Base
  has_many :event_cities

  mount_uploader :illustration, IllustrationUploader

end
