class SaveableStory < ActiveRecord::Base
  belongs_to :owner, class_name: "User",
                        foreign_key: "user_id"
  belongs_to :assigner, class_name: "User",
                          foreign_key: "assigner"
end
