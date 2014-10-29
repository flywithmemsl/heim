class BlogPost < ActiveRecord::Base
  belongs_to :category
  belongs_to :event_city

  mount_uploader :smallpic, SmallpicUploader
  mount_uploader :illustration, IllustrationUploader


  def similars
    if self.taglist != nil
      tag = self.taglist.split(", ").first
      @posts = BlogPost
      .where(category_id: self.category_id)
      .where("taglist like ?", "%#{tag}%")
      .where.not(id: self.id)
      .order(:date)
      .limit(3)
    else
      @posts = []
    end


  end



end
