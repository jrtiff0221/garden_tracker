class CommentsController < ApplicationController


    
    def new
        @comment = Comment.new
        @gardens = Garden.all
    end

    def create
        
        @comment = Comment.new(comment_params)
   
        if @comment.valid?
            @comment.save
        
            redirect_to  comment_path(@comment)
        else
            render :new
        end
    end 


    def index
        if params[:author]
            @comments = Comment.search_by_author(params[:author])
            @comments = Comment.order_by_author if @comments == []
        else 
            @comments = Comment.order_by_author
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
        if current_user.id == @comment.user_id  && @comment.update(comment_params)
            redirect_to comment_path(@comment)
        else
            render :edit
        end
    end

    def destroy
        set_comment
        if current_user.id == @comment.user_id 
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
        params.require(:comment).permit(:author, :title, :message, :user_id)
    end
end
