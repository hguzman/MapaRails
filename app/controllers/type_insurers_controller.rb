class TypeInsurersController < ApplicationController
  before_action :set_type_insurer, only: [:show, :edit, :update, :destroy]

  # GET /type_insurers
  # GET /type_insurers.json
  def index
    @type_insurers = TypeInsurer.all
  end

  # GET /type_insurers/1
  # GET /type_insurers/1.json
  def show
  end

  # GET /type_insurers/new
  def new
    @type_insurer = TypeInsurer.new
  end

  # GET /type_insurers/1/edit
  def edit
  end

  # POST /type_insurers
  # POST /type_insurers.json
  def create
    @type_insurer = TypeInsurer.new(type_insurer_params)

    respond_to do |format|
      if @type_insurer.save
        format.html { redirect_to @type_insurer, notice: 'Type insurer was successfully created.' }
        format.json { render :show, status: :created, location: @type_insurer }
      else
        format.html { render :new }
        format.json { render json: @type_insurer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_insurers/1
  # PATCH/PUT /type_insurers/1.json
  def update
    respond_to do |format|
      if @type_insurer.update(type_insurer_params)
        format.html { redirect_to @type_insurer, notice: 'Type insurer was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_insurer }
      else
        format.html { render :edit }
        format.json { render json: @type_insurer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_insurers/1
  # DELETE /type_insurers/1.json
  def destroy
    @type_insurer.destroy
    respond_to do |format|
      format.html { redirect_to type_insurers_url, notice: 'Type insurer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_insurer
      @type_insurer = TypeInsurer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_insurer_params
      params.require(:type_insurer).permit(:tipo_seguro)
    end
end
