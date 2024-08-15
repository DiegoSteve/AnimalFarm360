class RanchesController < ApplicationController
  before_action :set_ranch, only: %i[ show edit update destroy ]

  # GET /ranches or /ranches.json
  def index
    @ranches = Ranch.all
  end

  # GET /ranches/1 or /ranches/1.json
  def show
  end

  # GET /ranches/new
  def new
    @ranch = Ranch.new
  end

  # GET /ranches/1/edit
  def edit
  end

  # POST /ranches or /ranches.json
  def create
    @ranch = Ranch.new(ranch_params)

    respond_to do |format|
      if @ranch.save
        format.html { redirect_to ranch_url(@ranch), notice: "Ranch was successfully created." }
        format.json { render :show, status: :created, location: @ranch }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ranch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ranches/1 or /ranches/1.json
  def update
    respond_to do |format|
      if @ranch.update(ranch_params)
        format.html { redirect_to ranch_url(@ranch), notice: "Ranch was successfully updated." }
        format.json { render :show, status: :ok, location: @ranch }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ranch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ranches/1 or /ranches/1.json
  def destroy
    @ranch.destroy

    respond_to do |format|
      format.html { redirect_to ranches_url, notice: "Ranch was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ranch
      @ranch = Ranch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ranch_params
      params.require(:ranch).permit(:name, :location)
    end
end
