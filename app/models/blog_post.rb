class BlogPost < ActiveRecord::Base
  belongs_to :category
  belongs_to :event_city

  mount_uploader :smallpic, SmallpicUploader
  mount_uploader :illustration, IllustrationUploader


  def similars
    tag = self.title.split(" ").first
    # @posts = self.class.all.limit(3)
    @posts = self.class.where(category_id: self.category_id).where("title like ?", "%#{tag}%").where.not(id: self.id).sort_by(&:date)

  end


end
