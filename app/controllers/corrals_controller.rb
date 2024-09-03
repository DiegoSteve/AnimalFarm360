class CorralsController < ApplicationController
  before_action :set_corral, only: %i[ show edit update destroy ]

  # GET /corrals or /corrals.json
  def index
    @corrals = Corral.all
  end

  # GET /corrals/1 or /corrals/1.json
  def show
  end

  # GET /corrals/new
  def new
    @corral = Corral.new
  end

  # GET /corrals/1/edit
  def edit
  end

  # POST /corrals or /corrals.json
  def create
    @corral = Corral.new(corral_params)

    respond_to do |format|
      if @corral.save
        format.html { redirect_to corral_url(@corral), notice: "Corral was successfully created." }
        format.json { render :show, status: :created, location: @corral }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @corral.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /corrals/1 or /corrals/1.json
  def update
    respond_to do |format|
      if @corral.update(corral_params)
        format.html { redirect_to corral_url(@corral), notice: "Corral was successfully updated." }
        format.json { render :show, status: :ok, location: @corral }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @corral.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corrals/1 or /corrals/1.json
  def destroy
    @corral.destroy

    respond_to do |format|
      format.html { redirect_to corrals_url, notice: "Corral was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corral
      @corral = Corral.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def corral_params
      params.require(:corral).permit(:name, :capacity, :tipo, :ranch_id)
    end
end
