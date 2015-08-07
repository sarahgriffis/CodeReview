class AddColumnsToSaveableStory < ActiveRecord::Migration
  def change
    add_column :saveable_stories, :state, :string
    add_column :saveable_stories, :assigner, :integer
    add_column :saveable_stories, :date_opened, :datetime
    add_column :saveable_stories, :date_closed, :datetime
  end
end
