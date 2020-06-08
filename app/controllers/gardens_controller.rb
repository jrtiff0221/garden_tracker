class GardensController < ApplicationController

    def new
        @garden = Garden.new
    end

    def create
    end 

    def index
        @garden = Garden.all
    end

    
end
