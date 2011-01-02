class CreateNewsStoryLinks < ActiveRecord::Migration
  def self.up
    create_table :news_story_links do |t|
      t.integer :news_story_id
      t.integer :link_id

      t.timestamps
    end
  end

  def self.down
    drop_table :news_story_links
  end
end
