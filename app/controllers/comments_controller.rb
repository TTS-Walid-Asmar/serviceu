class CommentsController < ApplicationController

  before_action :authenticate_user!

    def edit
    end

    def show
  end

    def create
        @comment = @commentable.comments.new comment_params
      @comment.user = current_user
     if @comment.save
    redirect_to @commentable, notice: "Your comment was successfully posted."
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
  end

    def update
    respond_to do |format|
        if @comment.update(comment_params)
        format.html { redirect_to @commentable, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @commentable }
      else
        format.html { render :edit }
            format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

def destroy
    @comment.destroy
    respond_to do |format|
        format.html { redirect_to root_path, notice: 'It was successfully deleted.' }
      format.json { head :no_content }
    end
  end


  private

    def comment_params
        params.require(:comment).permit(:body)
    end
end
