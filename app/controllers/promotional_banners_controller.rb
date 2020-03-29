class PromotionalBannersController < ApplicationController
  before_action :set_promotional_banner, only: [:show, :edit, :update, :destroy]

  # GET /promotional_banners
  # GET /promotional_banners.json
  def index
    @promotional_banners = PromotionalBanner.all
  end

  # GET /promotional_banners/1
  # GET /promotional_banners/1.json
  def show
  end

  # GET /promotional_banners/new
  def new
    @promotional_banner = PromotionalBanner.new
  end

  # GET /promotional_banners/1/edit
  def edit
  end

  # POST /promotional_banners
  # POST /promotional_banners.json
  def create
    @promotional_banner = PromotionalBanner.new(promotional_banner_params)

    respond_to do |format|
      if @promotional_banner.save
        format.html { redirect_to @promotional_banner, notice: 'Promotional banner was successfully created.' }
        format.json { render :show, status: :created, location: @promotional_banner }
      else
        format.html { render :new }
        format.json { render json: @promotional_banner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promotional_banners/1
  # PATCH/PUT /promotional_banners/1.json
  def update
    respond_to do |format|
      if @promotional_banner.update(promotional_banner_params)
        format.html { redirect_to @promotional_banner, notice: 'Promotional banner was successfully updated.' }
        format.json { render :show, status: :ok, location: @promotional_banner }
      else
        format.html { render :edit }
        format.json { render json: @promotional_banner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promotional_banners/1
  # DELETE /promotional_banners/1.json
  def destroy
    @promotional_banner.destroy
    respond_to do |format|
      format.html { redirect_to promotional_banners_url, notice: 'Promotional banner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promotional_banner
      @promotional_banner = PromotionalBanner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def promotional_banner_params
      params.require(:promotional_banner).permit(:store_id, :name, :banner)
    end
end
