class EventController < ApplicationController

  def index
    @event = Event.first
    @city = EventCity.all.where(active: true)
  end

  def past
    @q = params[:q].to_s
    @city = EventCity.all
    @list = BlogPost.all.where(publish: :false).where(category_id: 2).where(event: true)
    if @q != ''
      @list = BlogPost.all.where(publish: :false).where(event_city_id: @q).where(category_id: 2).where(event: true)
    end
  end


end
