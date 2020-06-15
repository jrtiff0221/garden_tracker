class ProducesController < ApplicationController


    def new
        @produce = Produce.new
    end

    def create
        @produce = Produce.new(produce_params)

        if @produce.save
        
            redirect_to produce_path(@produce)
        else
            render :new
        end
    end 

    def index
        if params[:category]
            @produces = Produce.search_by_category(params[:category])
            @produces = Produce.order_by_category if @producess == []
        else 
            @produces = Produce.order_by_category
        end
    end

    def show
        @produce = Produce.find_by(id: params[:id])
    end

    def edit
        set_produce
    end

    def update
        set_produce
        if @produce.update(produce_params)
            redirect_to produce_path(@produce)
        else
            render :edit
        end
    end

    def destroy
        set_produce
        @produce.destroy 
        redirect_to produces_path
    end

    private

    def set_produce
        @produce = Produce.find_by(id: params[:id])
        if !@produce
            redirect_to produces_path    
        end
    end
    
    def produce_params
        params.require(:produce).permit(:produce_name, :category, :number_of_produce, :img, )
    end

end