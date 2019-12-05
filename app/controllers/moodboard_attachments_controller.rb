class MoodboardAttachmentsController < ApplicationController
  before_action :set_moodboard_attachment, only: [:show, :edit, :update, :destroy]

  # GET /moodboard_attachments
  # GET /moodboard_attachments.json
  def index
    @moodboard_attachments = MoodboardAttachment.all
  end

  # GET /moodboard_attachments/1
  # GET /moodboard_attachments/1.json
  def show
  end

  # GET /moodboard_attachments/new
  def new
    @moodboard_attachment = MoodboardAttachment.new
  end

  # POST /moodboard_attachments
  # POST /moodboard_attachments.json
  def create
    @moodboard_attachment = MoodboardAttachment.new(moodboard_attachment_params)
  end

  # PATCH/PUT /moodboard_attachments/1
  # PATCH/PUT /moodboard_attachments/1.json


  # DELETE /moodboard_attachments/1
  # DELETE /moodboard_attachments/1.json
  def destroy
    @moodboard_attachment.destroy
    respond_to do |format|
      format.html { redirect_to moodboard_attachments_url, notice: 'Moodboard attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moodboard_attachment
      @moodboard_attachment = MoodboardAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moodboard_attachment_params
      params.require(:moodboard_attachment).permit(:moodboard_id, :image)
    end
end
