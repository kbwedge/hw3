class PlacesController < ApplicationController

    def index
        @places = Place.all
    end
    
    def show
        # .find(123) is the same as .where({ id: 123 })[0]
        @place = Place.find(params["id"])
    end
    
    def new
        @place = Place.new
    end
    
    def create
        @place = Place.new(params["place"])
        @company.save
        redirect_to "/places"
    end
    
    def edit
        @company = Place.find(params["id"])
    end
    
    def update
        @place = Company.find(params["id"])
        @place.update(params["place"])
        redirect_to "/places"
    end
    
    def destroy
        @place = Company.find(params["id"])
        @place.destroy
        redirect_to "/places"
    end

end
