class HikesController < ApplicationController

  def home
    @hikes = Hike.all
    @hike = Hike.new
  end

  def create
    @hike = Hike.new(hike_params)
    @hike.save
    redirect_to "/"
  end

  def index
    @hikes = Hike.all.as_json
    render json: @hikes
  end

  protected

  def hike_params
    params.require(:hike).permit(:name, :distance_mi)
  end

end