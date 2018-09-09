class FilmsController < ApplicationController
  before_action :set_film, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /films
  # GET /films.json
  def index
    @films = Film.all
  end

  # GET /films/1
  # GET /films/1.json
  def show
    swapi_id = params['id']
    @film = Film.where(swapi_url: "https://swapi.co/api/films/#{swapi_id}/").first()
  end

  # GET /films/new
  def new
    @film = Film.new
  end

  # GET /films/1/edit
  def edit
  end

  # POST /films
  # POST /films.json
  def create
    @film = Film.new(film_params)

    respond_to do |format|
      if @film.save
        format.html { redirect_to @film, notice: 'Film was successfully created.' }
        format.json { render :show, status: :created, location: @film }
      else
        format.html { render :new }
        format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /films/1
  # PATCH/PUT /films/1.json
  def update
    respond_to do |format|
      if @film.update(film_params)
        format.html { redirect_to @film, notice: 'Film was successfully updated.' }
        format.json { render :show, status: :ok, location: @film }
      else
        format.html { render :edit }
        format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /films/1
  # DELETE /films/1.json
  def destroy
    @film.destroy
    respond_to do |format|
      format.html { redirect_to films_url, notice: 'Film was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_film
      swapi_id = params['id']
      @film = Film.where(swapi_url: "https://swapi.co/api/films/#{swapi_id}/").first()
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def film_params
      params.require(:film).permit(:title, :episode_id, :opening_crawl, :director, :producer, :release_date, :swapi_url, characters: [], planets: [], starships: [], vehicles: [], species: [])
    end
end
