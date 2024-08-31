# app/controllers/ranches_controller.rb
class RanchesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ranch, only: %i[show edit update destroy]

  # GET /ranches or /ranches.json
  def index
    @ranch = current_user.ranch
  end

  # GET /ranches/1 or /ranches/1.json
  def show
    puts @ranch
  end

  # GET /ranches/new
  def new
    @ranch = current_user.build_ranch
  end

  # GET /ranches/1/edit
  def edit
  end

  # POST /ranches or /ranches.json
  def create
    @ranch = current_user.build_ranch(ranch_params)

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
    @ranch = current_user.ranch
    unless @ranch
      redirect_to new_ranch_path, alert: "No tienes un rancho actualmente. Por favor, crea uno nuevo."
    end
  end
    

    # Only allow a list of trusted parameters through.
  def ranch_params
    params.require(:ranch).permit(:name, :location)
  end
end
