class MoodboardsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @moodboards = Moodboard.all
  end

  def new
    @moodboard = Moodboard.new
  end

  def create
    @moodboard = Moodboard.new(moodboards_params)
  end

private

  def moodboards_params
    params.require(:moodboard).permit(:shoe_type, :is_finished, :detail, :votes)
  end

end

