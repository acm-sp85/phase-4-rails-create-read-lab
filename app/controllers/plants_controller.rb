class PlantsController < ApplicationController
    def index
        plants = Plant.all
        render json: plants

    end

    def show
        show = Plant.find_by(id: params[:id])
        render json: show
    end

    def create
        plants = Plant.create(plant_params)
        render json: plants, status: :created

    end

    private 
    def plant_params
        params.permit(:name , :image , :price)
    end
end
