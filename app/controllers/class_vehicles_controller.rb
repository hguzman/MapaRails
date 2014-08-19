class ClassVehiclesController < ApplicationController
  before_action :set_class_vehicle, only: [:show, :edit, :update, :destroy]

  # GET /class_vehicles
  # GET /class_vehicles.json
  def index
    @class_vehicles = ClassVehicle.all
  end

  # GET /class_vehicles/1
  # GET /class_vehicles/1.json
  def show
  end

  # GET /class_vehicles/new
  def new
    @class_vehicle = ClassVehicle.new
  end

  # GET /class_vehicles/1/edit
  def edit
  end

  # POST /class_vehicles
  # POST /class_vehicles.json
  def create
    @class_vehicle = ClassVehicle.new(class_vehicle_params)

    respond_to do |format|
      if @class_vehicle.save
        format.html { redirect_to @class_vehicle, notice: 'Class vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @class_vehicle }
      else
        format.html { render :new }
        format.json { render json: @class_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_vehicles/1
  # PATCH/PUT /class_vehicles/1.json
  def update
    respond_to do |format|
      if @class_vehicle.update(class_vehicle_params)
        format.html { redirect_to @class_vehicle, notice: 'Class vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @class_vehicle }
      else
        format.html { render :edit }
        format.json { render json: @class_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_vehicles/1
  # DELETE /class_vehicles/1.json
  def destroy
    @class_vehicle.destroy
    respond_to do |format|
      format.html { redirect_to class_vehicles_url, notice: 'Class vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_vehicle
      @class_vehicle = ClassVehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_vehicle_params
      params.require(:class_vehicle).permit(:clase)
    end
end
