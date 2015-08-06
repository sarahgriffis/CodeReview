class CrsController < ApplicationController
  def index

    client = TrackerApi::Client.new(token: '2b77bdfc1f1a5c6061ba1bd2ae6173c7')
    project  = client.project(1072430)
    #project.stories(filter: 'label:"needs cr"')
    stories = project.stories(filter: 'label:"needs cr"')

    @code_review_stories = stories.map { |story| CodeReviewStory.new(story) }
    binding.pry

    #1332230 person_id is stampy
    #https://github.com/paperlesspost/paperless-ios/pull

  end
end
