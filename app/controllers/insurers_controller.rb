class InsurersController < ApplicationController
  before_action :set_insurer, only: [:show, :edit, :update, :destroy]

  # GET /insurers
  # GET /insurers.json
  def index
    @insurers = Insurer.all
  end

  # GET /insurers/1
  # GET /insurers/1.json
  def show
  end

  # GET /insurers/new
  def new
    @insurer = Insurer.new
  end

  # GET /insurers/1/edit
  def edit
  end

  # POST /insurers
  # POST /insurers.json
  def create
    @insurer = Insurer.new(insurer_params)

    respond_to do |format|
      if @insurer.save
        format.html { redirect_to @insurer, notice: 'Insurer was successfully created.' }
        format.json { render :show, status: :created, location: @insurer }
      else
        format.html { render :new }
        format.json { render json: @insurer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insurers/1
  # PATCH/PUT /insurers/1.json
  def update
    respond_to do |format|
      if @insurer.update(insurer_params)
        format.html { redirect_to @insurer, notice: 'Insurer was successfully updated.' }
        format.json { render :show, status: :ok, location: @insurer }
      else
        format.html { render :edit }
        format.json { render json: @insurer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insurers/1
  # DELETE /insurers/1.json
  def destroy
    @insurer.destroy
    respond_to do |format|
      format.html { redirect_to insurers_url, notice: 'Insurer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insurer
      @insurer = Insurer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insurer_params
      params.require(:insurer).permit(:nom_aseguradora)
    end
end
