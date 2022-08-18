class SportCentersController < ApplicationController
  before_action :set_sport_center, only: %i[ show edit update destroy ]

  # GET /sport_centers or /sport_centers.json
  def index
    @sport_centers = SportCenter.all
  end

  # GET /sport_centers/1 or /sport_centers/1.json
  def show
  end

  # GET /sport_centers/new
  def new
    @sport_center = SportCenter.new
  end

  # GET /sport_centers/1/edit
  def edit
  end

  # POST /sport_centers or /sport_centers.json
  def create
    @sport_center = SportCenter.new(sport_center_params)

    respond_to do |format|
      if @sport_center.save
        format.html { redirect_to sport_center_url(@sport_center), notice: "Sport center was successfully created." }
        format.json { render :show, status: :created, location: @sport_center }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sport_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sport_centers/1 or /sport_centers/1.json
  def update
    respond_to do |format|
      if @sport_center.update(sport_center_params)
        format.html { redirect_to sport_center_url(@sport_center), notice: "Sport center was successfully updated." }
        format.json { render :show, status: :ok, location: @sport_center }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sport_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sport_centers/1 or /sport_centers/1.json
  def destroy
    @sport_center.destroy

    respond_to do |format|
      format.html { redirect_to sport_centers_url, notice: "Sport center was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sport_center
      @sport_center = SportCenter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sport_center_params
      params.require(:sport_center).permit(:name_center)
    end
end
