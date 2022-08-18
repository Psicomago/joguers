class CommunnesController < ApplicationController
  before_action :set_communne, only: %i[ show edit update destroy ]

  # GET /communnes or /communnes.json
  def index
    @communnes = Communne.all
  end

  # GET /communnes/1 or /communnes/1.json
  def show
  end

  # GET /communnes/new
  def new
    @communne = Communne.new
  end

  # GET /communnes/1/edit
  def edit
  end

  # POST /communnes or /communnes.json
  def create
    @communne = Communne.new(communne_params)

    respond_to do |format|
      if @communne.save
        format.html { redirect_to communne_url(@communne), notice: "Communne was successfully created." }
        format.json { render :show, status: :created, location: @communne }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @communne.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /communnes/1 or /communnes/1.json
  def update
    respond_to do |format|
      if @communne.update(communne_params)
        format.html { redirect_to communne_url(@communne), notice: "Communne was successfully updated." }
        format.json { render :show, status: :ok, location: @communne }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @communne.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /communnes/1 or /communnes/1.json
  def destroy
    @communne.destroy

    respond_to do |format|
      format.html { redirect_to communnes_url, notice: "Communne was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_communne
      @communne = Communne.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def communne_params
      params.require(:communne).permit(:communne_name, :communne_code)
    end
end
