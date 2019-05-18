class HomeController < ApplicationController
  def index
    @facilities  = Facility.all.order(:position)
  end
end
