class ThingsController < ApplicationController
  def show
    @thing = Thing.first
    render json: @thing
  end
end
