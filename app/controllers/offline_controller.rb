class OfflineController < ApplicationController

  def index
    @countries = Country.all.order("id")

  end


end
