class AirportsController < ApplicationController
  before_action :set_airport, only: [:show, :edit, :update, :destroy]
  before_action :get_all, only: [:index, :create, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
     @airports = Airport.search(params[:search]).page(params[:page]).per_page(10)
    respond_to do |format|
      format.html
      format.json
    end
  end
  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @airport = Airport.find_by(id: params[:id])
  end

  # GET /epss/new
  def new
    @airport = Airport.new
  end

  # GET /epss/1/edit
  def edit
    @airport = Airport.find_by(id: params[:id])
  end

  # POST /epss
  # POST /epss.json
  def create
    @airport = Airport.create(airport_params)

  end

  # PATCH/PUT /epss/
  # PATCH/PUT /epss/1.json
  def update
    respond_to do |format|
      if @airport.update(airport_params)
        format.html { redirect_to @airport, notice: 'eps was successfully updated.' }
        format.json { render :show, status: :ok, location: @airport }
      else
        format.html { render :edit }
        format.json { render json: @airport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /epss/1
  # DELETE /epss/1.json
  def destroy
    @airport = Airport.find_by(id: params[:id])
    if @airport.destroy
      redirect_to airports_url
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airport
      @airport = Airport.find(params[:id])
    end

    def get_all
      @airports = Airport.search(params[:search]).page(params[:page]).per_page(10)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def airport_params
      params.require(:airport).permit(:name, :city_id, :department)
    end
end
