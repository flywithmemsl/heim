class EventCity < ActiveRecord::Base
  belongs_to :event

  has_many :blog_posts

end
