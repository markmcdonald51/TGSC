class HomeController < ApplicationController
  def index
    @facilities  = Facility.includes(:pictures).all.order(:position)
  end
end
