class Api::TripsController < ApplicationController
    def create
        @trip = Trip.new(trip_params)
        if @trip.save
          render json: @trip
        else
          render json: @trip.errors.full_messages, status: 422
        end
    end
    
    def show
        @trip = Trip.find(params[:id])
        render json: @trip
    end
    
    def index
        @trips = Trip.all
        render json: @trips
    end

    private


    def trip_params
        params.require(:trip).permit(:trip_id, :name, :description)
    end

end