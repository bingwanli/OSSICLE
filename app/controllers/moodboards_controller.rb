class MoodboardsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @moodboards = Moodboard.order(votes: :desc)
  end

  def show
    set_moodboard
    @comments = Comment.where(moodboard_id: params[:id])
    @moodboard_attachments = @moodboard.moodboard_attachments.all
  end

  def new
    @moodboard = Moodboard.new
    @moodboard_attachments = @moodboard.moodboard_attachments.build
  end

  def create
    @moodboard = Moodboard.new(moodboards_params)
    @moodboard.user = current_user

    respond_to do |format|
      if @moodboard.save
        params[:moodboard_attachments]['image'].each do |i|
          @moodboard_attachment = @moodboard.moodboard_attachments.create!(:image => i,
            :moodboard_id => @moodboard.id)
        end
        format.html { redirect_to @moodboard, notice: 'Moodboard was successfully created.'}
      else
        format.html { render action: 'new' }
      end
    end
  end

  def edit
    set_moodboard
  end

  def addvote
    set_moodboard
    @moodboard.increment(:votes, 1)
    @moodboard.save
  end

  def update
  end

  def destroy
  end

private

  def set_moodboard
    @moodboard = Moodboard.find(params[:id])
  end

  def moodboards_params
    params.require(:moodboard).permit(:shoe_type, :is_finished, :detail, :votes, :title, moodboard_attachments_attributes: [:id, :moodboard_id, :image])
  end
end

