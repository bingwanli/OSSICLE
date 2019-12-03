class MoodboardsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @moodboards = Moodboard.all
  end

  def show
    set_moodboard
  end

  def new
    @moodboard = Moodboard.new
  end

  def create
    @moodboard = Moodboard.new(moodboards_params)
    @moodboard.user = current_user
    if @moodboard.save
      redirect_to moodboard_path(@moodboard)
    else render :new
    end
  end

  def edit
    set_moodboard
  end

  def update
  end

  def delete
  end

private

  def set_moodboard
    @moodboard = Moodboard.find(params[:id])
  end

  def moodboards_params
    params.require(:moodboard).permit(:shoe_type, :is_finished, :detail, :votes, :photo, :title)
  end
end

