class AddNameToSaveableStories < ActiveRecord::Migration
  def change
    add_column :saveable_stories, :name, :text
  end
end
