class UserEvaluationsController < ApplicationController
  before_action :set_user_evaluation, only: %i[ show edit update destroy ]

  # GET /user_evaluations or /user_evaluations.json
  def index
    @user_evaluations = UserEvaluation.all
  end

  # GET /user_evaluations/1 or /user_evaluations/1.json
  def show
  end

  # GET /user_evaluations/new
  def new
    @user_evaluation = UserEvaluation.new
  end

  # GET /user_evaluations/1/edit
  def edit
  end

  # POST /user_evaluations or /user_evaluations.json
  def create
    @user_evaluation = UserEvaluation.new(user_evaluation_params)

    respond_to do |format|
      if @user_evaluation.save
        format.html { redirect_to user_evaluation_url(@user_evaluation), notice: "User evaluation was successfully created." }
        format.json { render :show, status: :created, location: @user_evaluation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_evaluations/1 or /user_evaluations/1.json
  def update
    respond_to do |format|
      if @user_evaluation.update(user_evaluation_params)
        format.html { redirect_to user_evaluation_url(@user_evaluation), notice: "User evaluation was successfully updated." }
        format.json { render :show, status: :ok, location: @user_evaluation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_evaluations/1 or /user_evaluations/1.json
  def destroy
    @user_evaluation.destroy

    respond_to do |format|
      format.html { redirect_to user_evaluations_url, notice: "User evaluation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_evaluation
      @user_evaluation = UserEvaluation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_evaluation_params
      params.require(:user_evaluation).permit(:puntually, :attendance, :cooperation)
    end
end
