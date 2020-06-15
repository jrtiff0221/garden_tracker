class GardensController < ApplicationController

    def new
        @garden = Garden.new
        #check if it's nested & it's a proper id
        # if params[:garden] && params[:garden][:produce_id] && produce = Produce.find_by(id: params[:garden][:produce_id])
        
        #     #nested route
        #     @garden = Garden.new(params[:garden])
        #     # @produce = User..build(produce: @produce, garden: @garden)
        # else
        #     @garden = Garden.new
        # end
    end

    def create
        puts "garden_params"
        puts garden_params
        @garden = Garden.new(garden_params)

        if @garden.save
        
            redirect_to garden_path(@garden)
        else
            render :new
        end
    end 

    def index
        if params[:category]
            @gardens = Garden.search_by_category(params[:category])
            @gardnes = Garden.order_by_category if @gardens == []
        else 
            @gardens = Garden.order_by_category
        end
    end

    def show

        @garden = Garden.find_by(id: params[:id])
  
    end

    def edit
        set_garden
    end

    def update
        set_garden
        if @garden.update(garden_params)
            redirect_to garden_path(@garden)
        else
            render :edit
        end
    end

    def destroy
        set_garden
        @garden.destroy 
        redirect_to gardens_path
    end

    private

    def set_garden
        @garden = Garden.find_by(id: params[:id])
        if !@garden  
            redirect_to gardens_path    
        end
    end
    
    def garden_params
        params.require(:garden).permit(:garden_name, :category, :difficulty_rating, :description, :user_id, :produce_id)
    end

end
