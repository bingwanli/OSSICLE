class ShoesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @shoes = Shoe.all
  end

  def new
    @shoe = Shoe.new
  end

  def create
    @shoe = Shoe.new(shoes_params)
  end

private

  def shoes_params
    params.require(:shoe).permit(:shoe_type, :moodboard, :status, :votes)
  end

end

