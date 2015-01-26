module ApplicationHelper

  def magazines

    blocks = IndexPage.where.not(id: 1)

    blocks
  end

  def set_meta_for_url url
    meta_tag = MetaTag.for_url url
    if meta_tag
      set_meta_tags title: meta_tag.title, description: meta_tag.description, keywords: meta_tag.keywords
    else
      meta_tag = MetaTag.for_url "/"
      if meta_tag
        set_meta_tags title: meta_tag.title, description: meta_tag.description, keywords: meta_tag.keywords
      end
    end


  end

end
