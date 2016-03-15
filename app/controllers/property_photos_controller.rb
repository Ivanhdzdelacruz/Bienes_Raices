class PropertyPhotosController < ApplicationController
  before_action :set_property_photo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_agent!
  before_action :is_admin?
  # GET /property_photos
  # GET /property_photos.json
  def index
    @property_photos = PropertyPhoto.all
  end

  # GET /property_photos/1
  # GET /property_photos/1.json
  def show
  end

  # GET /property_photos/new
  def new
    @property_photo = PropertyPhoto.new
  end

  # GET /property_photos/1/edit
  def edit
  end

  # POST /property_photos
  # POST /property_photos.json
  def create
    @property_photo = PropertyPhoto.new(property_photo_params)

    respond_to do |format|
      if @property_photo.save
        format.html { redirect_to @property_photo, notice: 'Property photo was successfully created.' }
        format.json { render :show, status: :created, location: @property_photo }
      else
        format.html { render :new }
        format.json { render json: @property_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_photos/1
  # PATCH/PUT /property_photos/1.json
  def update
    respond_to do |format|
      if @property_photo.update(property_photo_params)
        format.html { redirect_to @property_photo, notice: 'Property photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_photo }
      else
        format.html { render :edit }
        format.json { render json: @property_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_photos/1
  # DELETE /property_photos/1.json
  def destroy
    @property_photo.destroy
    respond_to do |format|
      format.html { redirect_to property_photos_url, notice: 'Property photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_photo
      @property_photo = PropertyPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_photo_params
      params.require(:property_photo).permit(:source, :caption, :property_id)
    end
end
