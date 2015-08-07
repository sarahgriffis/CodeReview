class CreateSaveableStories < ActiveRecord::Migration
  def change
    create_table :saveable_stories do |t|
      t.integer :user_id
      t.integer :story_id
      t.integer :pull_request
      t.integer :estimate

      t.timestamps null: false
    end
  end
end
