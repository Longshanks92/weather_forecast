class PostcodeweathersController < ApplicationController
  before_action :set_postcodeweather, only: [:show, :edit, :update, :destroy]

  # GET /postcodeweathers
  # GET /postcodeweathers.json
  def index
    @postcodeweathers = Postcodeweather.all
  end

  # GET /postcodeweathers/1
  # GET /postcodeweathers/1.json
  def show
  end

  # GET /postcodeweathers/new
  def new
    @postcodeweather = Postcodeweather.new
  end

  # GET /postcodeweathers/1/edit
  def edit
  end

  # POST /postcodeweathers
  # POST /postcodeweathers.json
  def create
    @postcodeweather = Postcodeweather.new(postcodeweather_params)

    respond_to do |format|
      if @postcodeweather.save
        format.html { redirect_to @postcodeweather, notice: 'Postcodeweather was successfully created.' }
        format.json { render :show, status: :created, location: @postcodeweather }
      else
        format.html { render :new }
        format.json { render json: @postcodeweather.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postcodeweathers/1
  # PATCH/PUT /postcodeweathers/1.json
  def update
    respond_to do |format|
      if @postcodeweather.update(postcodeweather_params)
        format.html { redirect_to @postcodeweather, notice: 'Postcodeweather was successfully updated.' }
        format.json { render :show, status: :ok, location: @postcodeweather }
      else
        format.html { render :edit }
        format.json { render json: @postcodeweather.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postcodeweathers/1
  # DELETE /postcodeweathers/1.json
  def destroy
    @postcodeweather.destroy
    respond_to do |format|
      format.html { redirect_to postcodeweathers_url, notice: 'Postcodeweather was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postcodeweather
      @postcodeweather = Postcodeweather.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postcodeweather_params
      params.require(:postcodeweather).permit(:postcode)
    end
end
