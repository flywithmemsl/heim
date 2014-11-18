module ApplicationHelper

  def magazines

    blocks = IndexPage.where.not(id: 1)

    blocks
  end

end
