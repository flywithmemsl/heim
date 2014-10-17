class AboutController < ApplicationController

  def index
    @about = About.first
    @team = Teammate.all

  end


end
