class MainController < ApplicationController
  def index
    @posts = BlogPost.all.limit(6)
  end

  def static
  end

end
