class TheatersController < ApplicationController
  def index
    @theaters = Theater.all
  end

  def show
    @theaters = Theater.find_by_id(params[:id])
  end

  def new

  end

  def create
    m = Theater.new
    m.name = params[:name]
    m.address = params[:address]
    m.phone_number = params[:phone_number]
    m.save

    redirect_to theaters_url
  end
  def edit
    @theaters = Theater.find_by_id(params[:id])
  end
  def update
    @theaters = Theater.find_by_id(params[:id])
    @theaters.name = params[:name]
    @theaters.address = params[:address]
    @theaters.phone_number = params[:phone_number]
    @theaters.save

    redirect_to theaters_url
  end
  def destroy
    m = Theater.find_by_id(params[:id])
    m.destroy
    redirect_to theaters_url
  end
end
