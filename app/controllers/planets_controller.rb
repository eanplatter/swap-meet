class PlanetsController < ApplicationController
  before_action :set_planet, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /planets
  # GET /planets.json
  def index
    @planets = Planet.all
  end

  # GET /planets/1
  # GET /planets/1.json
  def show
    head 404

  end

  # GET /planets/new
  def new
    @planet = Planet.new
  end

  # GET /planets/1/edit
  def edit
  end

  # POST /planets
  # POST /planets.json
  def create
    @planet = Planet.new(planet_params)

    respond_to do |format|
      if @planet.save
        format.html { redirect_to @planet, notice: 'Planet was successfully created.' }
        format.json { render :show, status: :created, location: @planet }
      else
        format.html { render :new }
        format.json { render json: @planet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planets/1
  # PATCH/PUT /planets/1.json
  def update
    respond_to do |format|
      if @planet.update(planet_params)
        format.html { redirect_to @planet, notice: 'Planet was successfully updated.' }
        format.json { render :show, status: :ok, location: @planet }
      else
        format.html { render :edit }
        format.json { render json: @planet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planets/1
  # DELETE /planets/1.json
  def destroy
    @planet.destroy
    respond_to do |format|
      format.html { redirect_to planets_url, notice: 'Planet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planet
      swapi_id = params['id']
      @planet = Planet.where(swapi_url: "https://swapi.co/api/planets/#{swapi_id}/").first()
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planet_params
      params.require(:planet).permit(:name, :rotation_period, :orbital_period, :diameter, :climate, :gravity, :terrain, :surface_water, :population, :swapi_url, residents: [], films: [])
    end
end
