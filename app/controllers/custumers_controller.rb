class CustumersController < ApplicationController
  before_action :set_custumer, only: %i[ show edit update destroy ]

  # GET /custumers or /custumers.json
  def index
    @custumers = Custumer.all
  end

  # GET /custumers/1 or /custumers/1.json
  def show
  end

  # GET /custumers/new
  def new
    @custumer = Custumer.new
  end

  # GET /custumers/1/edit
  def edit
  end

  # POST /custumers or /custumers.json
  def create
    @custumer = Custumer.new(custumer_params)

    respond_to do |format|
      if @custumer.save
        format.html { redirect_to @custumer, notice: "Custumer was successfully created." }
        format.json { render :show, status: :created, location: @custumer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @custumer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custumers/1 or /custumers/1.json
  def update
    respond_to do |format|
      if @custumer.update(custumer_params)
        format.html { redirect_to @custumer, notice: "Custumer was successfully updated." }
        format.json { render :show, status: :ok, location: @custumer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @custumer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custumers/1 or /custumers/1.json
  def destroy
    @custumer.destroy
    respond_to do |format|
      format.html { redirect_to custumers_url, notice: "Custumer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custumer
      @custumer = Custumer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def custumer_params
      params.require(:custumer).permit(:name)
    end
end
