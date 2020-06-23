class CommentsController < ApplicationController
    before_action :set_comment, only: [:show, :edit, :update, :destroy]

    
    def new
        @comment = current_user.comments.build
    end

    def create
        @garden = Garden.find(comment_params[:garden_id])
        @comment = @garden.comments.create(comment_params)

        if @comment.valid?
            @comment.save
        
            redirect_to garden_path(@garden)
        else
            render :new
        end
    end 


    def index
        if params[:title]
            @comments = Comment.search_by_title(params[:title])
            @comments = Comment.order_by_title if @comments == []
        else 
            @comments = Comment.order_by_title
        end
    end

    def show

        @comment = Comment.find_by(id: params[:id])        

    end


    def edit
        set_comment
    end

    def update
        set_comment
        if current_user.id == @comment.id  && @comment.update(comment_params)
            redirect_to comment_path(@comment)
        else
            render :edit
        end
    end

    def destroy
        set_comment
        if current_user.id == @comment.id 
            @comment.destroy 
            redirect_to comments_path
        end
    end

    private

    def set_comment
        @comment = Comment.find_by(id: params[:id])
        if !@comment  
            redirect_to comments_path    
        end
    end
    
    def comment_params
        params.require(:comment).permit( 
            :message,
            :author,
            :title,
            :user_id,
            :garden_id,
        )
    end
end
