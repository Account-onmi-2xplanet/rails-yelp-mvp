class RestaurantsController < ApplicationController
    def index
        @restaurants = Restaurant.all
    end

    def new
        @restaurant = Restaurant.new # needed to instantiate the form_for
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        #@restaurant.save
    
        if @restaurant.save
            redirect_to restaurant_path(@restaurant)
        else
            render :new
        end


        # no need for app/views/restaurants/create.html.erb
        #redirect_to restaurant_path(@restaurant)
    end

    def show
        @restaurant = Restaurant.find(params[:id])
    end


    private

    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    end
end
