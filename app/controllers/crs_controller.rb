class CrsController < ApplicationController
  before_action :authenticate_user!


  def index

    client = TrackerApi::Client.new(token: '2b77bdfc1f1a5c6061ba1bd2ae6173c7')
    project  = client.project(1072430)
    stories = project.stories(filter: 'label:"needs cr"')

    code_review_stories = stories.map do |story|
        CodeReviewStory.new(story)
    end

    @saveable_stories = code_review_stories.map do |story|
      if story.current_state != 'accepted'

        temp_story = SaveableStory.find_or_create_by(story_id: story.id)
        temp_story.story_id = story.id
        temp_story.pull_request = story.pull_request
        temp_story.estimate = story.estimate
        temp_story.name = story.name
        temp_story.date_opened = story.created_at
        temp_story.save
      end

      temp_story
    end.compact
    #1332230 person_id is stampy
    #https://github.com/paperlesspost/paperless-ios/pull

  end
end
