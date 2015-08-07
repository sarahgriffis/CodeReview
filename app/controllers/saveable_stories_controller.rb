class SaveableStoriesController < ApplicationController

  def update
    @story = SaveableStory.find(params[:id])
    @story.update!(story_params)
    redirect_to authenticated_root_path
  end


private
    def story_params
        params.require(:saveable_story).permit(:state, :user_id)
    end

end
