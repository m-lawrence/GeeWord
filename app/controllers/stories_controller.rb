class StoriesController < ApplicationController

    def index
        @stories = Story.all
    end

    def show
        @story = Story.find(params[:id])
        @contribution = Contribution.new
    end

    def new
        @story = Story.new
    end

    def create
        @story = Story.create(story_params)
        @current_user
        if @story.valid?
            redirect_to story_path(@story)
        else
            flash[:errors] = @story.errors.full_messages
            redirect_to new_story_path
        end
    end

    def destroy
        @story = Story.find(params[:id])
        @user = @story.user
        @story.delete
        redirect_to user_path(@user)
    end

    private

    def story_params
        params.require(:story).permit(:title, :content, :user_id)
    end

end
