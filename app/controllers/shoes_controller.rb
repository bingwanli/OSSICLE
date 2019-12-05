class ShoesController < ApplicationController
  def new
    @shoe = Shoe.new
  end

  def create
    @shoe = Shoe.create(shoes_params)
    @shoe.save
  end

  def index
    @shoes = Shoe.where(:id == params[:moodboard_id])
  end

  def show
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def shoes_params
    params.require(:shoe).permit(:user_id, :moodboard_id, :votes, :photo_url, :detail)
  end
end
