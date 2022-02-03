class CitiesController < ApplicationController
    def index
        @cities = City.order(:state_id)
    end

    def new
        @city = City.new
    end

    def create
        @city = City.new(city_params)
        if @city.save
            redirect_to cities_path
        else
            render :new
        end
    end

    def edit
        @city = City.find(params[:id])
    end

    def update
        @city = City.find(params[:id])
        if @city.update(city_params)
            redirect_to cities_path
        else
            render :edit
        end
    end

    def destroy
        @city = City.find(params[:id])
        @city.destroy
        redirect_to cities_path, status: :see_other
    end

    private
    def city_params
      params.require(:city).permit(:state_id, :city_name)
    end

end
