class ToursController < ApplicationController
  before_action :set_tour, only: [:show, :update, :destroy]

  # GET /tours
  def index
    @tours = Tour.all

    render json: @tours
    # render json: TourSerializer.new(@tours).serializable_hash.to_json
  end

  # GET /tours/1
  def show
    render json: @tour
    # render json: TourSerializer.new(@tour).serializable_hash.to_json

  end

  # POST /tours
  def create

    @tour = Tour.create!(tour_params)
    render json: @tour, status: :created, location: @tour
    # render json: TourSerializer.new(@tour).serializable_hash.to_json
   


    # @tour = Tour.new(tour_params)

    # if @tour.save
    #   render json: @tour, status: :created, location: @tour
    # else
    #   render json: @tour.errors, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /tours/1
  def update
    
    @tour.update!(tour_params)
    render json: @tour
    # render json: TourSerializer.new(@tour)

    # if @tour.update(tour_params)
    #   render json: @tour
    # else
    #   render json: @tour.errors, status: :unprocessable_entity
    # end
  end

  # DELETE /tours/1
  def destroy
    @tour.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tour
      @tour = Tour.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tour_params
      params.require(:tour).permit(:title, :img, :description, :duration, :price)
    end
end
