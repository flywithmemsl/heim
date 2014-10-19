class GalleryController < ApplicationController
  def index
    @posts = GalleryPost.all
  end

  def show
    @post = GalleryPost.find_by(id: params[:id])
  end
end
