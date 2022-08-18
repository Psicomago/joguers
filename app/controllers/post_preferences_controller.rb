class PostPreferencesController < ApplicationController
  before_action :set_post_preference, only: %i[ show edit update destroy ]

  # GET /post_preferences or /post_preferences.json
  def index
    @post_preferences = PostPreference.all
  end

  # GET /post_preferences/1 or /post_preferences/1.json
  def show
  end

  # GET /post_preferences/new
  def new
    @post_preference = PostPreference.new
  end

  # GET /post_preferences/1/edit
  def edit
  end

  # POST /post_preferences or /post_preferences.json
  def create
    @post_preference = PostPreference.new(post_preference_params)

    respond_to do |format|
      if @post_preference.save
        format.html { redirect_to post_preference_url(@post_preference), notice: "Post preference was successfully created." }
        format.json { render :show, status: :created, location: @post_preference }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_preferences/1 or /post_preferences/1.json
  def update
    respond_to do |format|
      if @post_preference.update(post_preference_params)
        format.html { redirect_to post_preference_url(@post_preference), notice: "Post preference was successfully updated." }
        format.json { render :show, status: :ok, location: @post_preference }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_preferences/1 or /post_preferences/1.json
  def destroy
    @post_preference.destroy

    respond_to do |format|
      format.html { redirect_to post_preferences_url, notice: "Post preference was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_preference
      @post_preference = PostPreference.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_preference_params
      params.require(:post_preference).permit(:date_match, :amount_players, :match_length, :post_zone_code)
    end
end
