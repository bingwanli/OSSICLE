class ShoesController < ApplicationController
  def new
    @shoe = Shoe.new
    @moodboard = Moodboard.find(params[:moodboard_id])
  end

  def create
    @shoe = Shoe.create(shoes_params)
    @shoe.user = current_user
    @shoe.moodboard = Moodboard.find(params[:moodboard_id])
    respond_to do |format|
      if @shoe.save
        format.html { redirect_to moodboard_path(params[:moodboard_id]), notice: 'Shoe successfully uploaded.'}
      else
        format.html { render action: 'new' }
      end
    end
  end

  def index
    @shoes = Shoe.where(moodboard_id: params[:moodboard_id])
  end

  private

  def shoes_params
    params.require(:shoe).permit(:user_id, :moodboard_id, :votes, :image, :detail, :title)
  end
end
