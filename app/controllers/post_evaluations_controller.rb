class PostEvaluationsController < ApplicationController
  before_action :set_post_evaluation, only: %i[ show edit update destroy ]

  # GET /post_evaluations or /post_evaluations.json
  def index
    @post_evaluations = PostEvaluation.all
  end

  # GET /post_evaluations/1 or /post_evaluations/1.json
  def show
  end

  # GET /post_evaluations/new
  def new
    @post_evaluation = PostEvaluation.new
  end

  # GET /post_evaluations/1/edit
  def edit
  end

  # POST /post_evaluations or /post_evaluations.json
  def create
    @post_evaluation = PostEvaluation.new(post_evaluation_params)

    respond_to do |format|
      if @post_evaluation.save
        format.html { redirect_to post_evaluation_url(@post_evaluation), notice: "Post evaluation was successfully created." }
        format.json { render :show, status: :created, location: @post_evaluation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_evaluations/1 or /post_evaluations/1.json
  def update
    respond_to do |format|
      if @post_evaluation.update(post_evaluation_params)
        format.html { redirect_to post_evaluation_url(@post_evaluation), notice: "Post evaluation was successfully updated." }
        format.json { render :show, status: :ok, location: @post_evaluation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_evaluations/1 or /post_evaluations/1.json
  def destroy
    @post_evaluation.destroy

    respond_to do |format|
      format.html { redirect_to post_evaluations_url, notice: "Post evaluation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_evaluation
      @post_evaluation = PostEvaluation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_evaluation_params
      params.require(:post_evaluation).permit(:experience)
    end
end
