class ChangeColumnOnSaveableStory < ActiveRecord::Migration
  def change
    change_column :saveable_stories, :state, :string, :default => "open"
  end
end
