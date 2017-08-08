class ImagesController < ApplicationController
   before_action :set_upload, only: [:show, :edit, :update, :destroy]
 
  # GET /uploads
  def index
    @dantes = Image.all
  end
 
  # GET /uploads/1
  def show
  end
 
  # GET /uploads/new
  def new
    @dante = Image.new
  end
 
  # GET /uploads/1/edit
  def edit
  end
 
  # POST /uploads
  def create
  	@dante = Image.create(image:params[:image][:images], user_id:params[:image][:user_id], category:params[:image][:category] )
 
    if @dante.save
      redirect_to @dante, notice: 'Upload was successfully created.'
    else
      render :new
    end
  end
 
  # PATCH/PUT /uploads/1
  def update
    if @dante.update(post_upload_params)
      redirect_to @dante, notice: 'Upload attachment was successfully updated.'
    else
      render :edit
    end
  end
 
  # DELETE /uploads/1
  def destroy
    @dante.destroy
    redirect_to images_url, notice: 'Upload was successfully destroyed.'
  end
 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upload
      @dante = Image.find(params[:id])
    end
 
    # Never trust parameters from the scary internet, only allow the white list through.
    def post_upload_params
      params.require(:image).permit(:image)
    end
end