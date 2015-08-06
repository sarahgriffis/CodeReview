class CodeReviewStory < TrackerApi::Resources::Story

  def stampy_comment
    self.comments.each do |comment|
      if comment.person_id == 1332230
        return comment
      end
    end
  end

  def pull_request
    /pull\/(\d*)/.match(stampy_comment.text)[1]
  end
end
