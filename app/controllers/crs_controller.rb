class CrsController < ApplicationController
  def index

    client = TrackerApi::Client.new(token: '2b77bdfc1f1a5c6061ba1bd2ae6173c7')
    project  = client.project(1072430)
    #project.stories(filter: 'label:"needs cr"')
    @stories = project.stories(filter: 'label:"needs cr"')
  end
end
