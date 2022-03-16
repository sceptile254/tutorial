class WeightHistoriesController < ApplicationController
  before_action :set_weight_history, only: %i[ show edit update destroy ]

  # GET /weight_histories or /weight_histories.json
  def index
    @weight_histories = WeightHistory.all
  end

  # GET /weight_histories/1 or /weight_histories/1.json
  def show
  end

  # GET /weight_histories/new
  def new
    @weight_history = WeightHistory.new
  end

  # GET /weight_histories/1/edit
  def edit
  end

  # POST /weight_histories or /weight_histories.json
  def create
    @weight_history = WeightHistory.new(weight_history_params)

      if @weight_history.save
        redirect_to weight_history_url(@weight_history), notice: "Weight history was successfully created."
      else
        render :new
      end
  end

  # PATCH/PUT /weight_histories/1 or /weight_histories/1.json
  def update
      if @weight_history.update(weight_history_params)
        redirect_to weight_history_url(@weight_history), notice: "Weight history was successfully updated."
      else
        render :edit
      end
  end

  # DELETE /weight_histories/1 or /weight_histories/1.json
  def destroy
    @weight_history.destroy

      redirect_to weight_histories_url, notice: "Weight history was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weight_history
      @weight_history = WeightHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def weight_history_params
      params.require(:weight_history).permit(:user_id, :weight, :memo)
    end
end
