class ShoesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @shoes = Shoe.all
  end

  def new
    @shoe = Shoe.new
  end

  def create
    @shoe = Shoe.find(params[:id])
  end

end
