class CityweathersController < ApplicationController
  before_action :set_cityweather, only: [:show, :edit, :update, :destroy]

  # GET /cityweathers
  # GET /cityweathers.json
  def index
    @cityweathers = Cityweather.all
  end

  # GET /cityweathers/1
  # GET /cityweathers/1.json
  def show
  end

  # GET /cityweathers/new
  def new
    @cityweather = Cityweather.new
  end

  # GET /cityweathers/1/edit
  def edit
  end

  # POST /cityweathers
  # POST /cityweathers.json
  def create
    @cityweather = Cityweather.new(cityweather_params)

    respond_to do |format|
      if @cityweather.save
        format.html { redirect_to @cityweather, notice: 'Cityweather was successfully created.' }
        format.json { render :show, status: :created, location: @cityweather }
      else
        format.html { render :new }
        format.json { render json: @cityweather.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cityweathers/1
  # PATCH/PUT /cityweathers/1.json
  def update
    respond_to do |format|
      if @cityweather.update(cityweather_params)
        format.html { redirect_to @cityweather, notice: 'Cityweather was successfully updated.' }
        format.json { render :show, status: :ok, location: @cityweather }
      else
        format.html { render :edit }
        format.json { render json: @cityweather.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cityweathers/1
  # DELETE /cityweathers/1.json
  def destroy
    @cityweather.destroy
    respond_to do |format|
      format.html { redirect_to cityweathers_url, notice: 'Cityweather was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cityweather
      @cityweather = Cityweather.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cityweather_params
      params.require(:cityweather).permit(:city)
    end
end
