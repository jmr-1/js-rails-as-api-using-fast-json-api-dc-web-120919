class BirdsController < ApplicationController

    def index
        birds = Bird.all
        options = {
            include: [:location, :sighting]
        }
        render json: BirdSerializer.new(birds, options)
    end 
end
