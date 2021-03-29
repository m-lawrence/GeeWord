class ContributionsController < ApplicationController

    def new
        @contribution = Contribution.new
    end

    def create
        @contribution = Contribution.create(contribution_params)
        redirect_to story_path(@contribution.story.id)
    end

    private

    def contribution_params
        params.require(:contribution).permit(:contributor_content, :user_id, :story_id)
    end

end
