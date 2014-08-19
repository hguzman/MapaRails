class ListInsurersController < ApplicationController
  before_action :set_list_insurer, only: [:show, :edit, :update, :destroy]

  # GET /list_insurers
  # GET /list_insurers.json
  def index
    @list_insurers = ListInsurer.all
  end

  # GET /list_insurers/1
  # GET /list_insurers/1.json
  def show
  end

  # GET /list_insurers/new
  def new
    @list_insurer = ListInsurer.new
  end

  # GET /list_insurers/1/edit
  def edit
  end

  # POST /list_insurers
  # POST /list_insurers.json
  def create
    @list_insurer = ListInsurer.new(list_insurer_params)

    respond_to do |format|
      if @list_insurer.save
        format.html { redirect_to @list_insurer, notice: 'List insurer was successfully created.' }
        format.json { render :show, status: :created, location: @list_insurer }
      else
        format.html { render :new }
        format.json { render json: @list_insurer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_insurers/1
  # PATCH/PUT /list_insurers/1.json
  def update
    respond_to do |format|
      if @list_insurer.update(list_insurer_params)
        format.html { redirect_to @list_insurer, notice: 'List insurer was successfully updated.' }
        format.json { render :show, status: :ok, location: @list_insurer }
      else
        format.html { render :edit }
        format.json { render json: @list_insurer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_insurers/1
  # DELETE /list_insurers/1.json
  def destroy
    @list_insurer.destroy
    respond_to do |format|
      format.html { redirect_to list_insurers_url, notice: 'List insurer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_insurer
      @list_insurer = ListInsurer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_insurer_params
      params.require(:list_insurer).permit(:insurer_id, :type_insurer_id, :poliza, :vencimiento)
    end
end
