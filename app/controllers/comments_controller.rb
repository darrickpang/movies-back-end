class CommentsController < ApplicationController
    def index
        comments = Comment.all 
        render json: comments
    end 

    def new
        comment = Comment.new
    end

    def create 
        comment = Comment.create(comment_params)
        render json: comment
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment
    end

    def edit
        comment = Comment.find(params[:id])
    end

    def update 
        comment = Comment.find(params[:id])
        comment.update(comment_params)
        render json: comment
    end

    def destroy 
        comment = Comment.find(params[:id])
        tempDate = comment
        comment.destroy
        render json: tempDate
    end 

    private
    def comment_params
        params.require(:comment).permit(:comment, :user_id, :movie_id)
    end
end