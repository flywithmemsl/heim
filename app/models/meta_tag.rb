class MetaTag < ActiveRecord::Base

  def self.for_url url
    find_by url: url
  end


end
