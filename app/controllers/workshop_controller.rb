class WorkshopController < ApplicationController
  def index
    @workshops = Workshop.try(:order, date: :asc)
  end
end
