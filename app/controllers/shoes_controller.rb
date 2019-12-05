class ShoesController < ApplicationController
  def new
    @shoe = Shoe.new
    @moodboard = Moodboard.find(params[:moodboard_id])
  end

  def create
    @shoe = Shoe.create(shoes_params)
    @shoe.user = current_user
    @shoe.moodboard = Moodboard.find(params[:moodboard_id])
    @shoe.save
    redirect_to moodboard_path(params[:moodboard_id])
  end

  def index
    @shoes = Shoe.where(moodboard_id: params[:moodboard_id])
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
    params.require(:shoe).permit(:user_id, :moodboard_id, :votes, :image, :detail, :title)
  end
end
