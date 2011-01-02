class CreateNewsStoryPhotos < ActiveRecord::Migration
  def self.up
    create_table :news_story_photos do |t|
      t.integer :news_story_id
      t.integer :photo_id

      t.timestamps
    end
  end

  def self.down
    drop_table :news_story_photos
  end
end
