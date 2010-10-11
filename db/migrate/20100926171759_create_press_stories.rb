class CreatePressStories < ActiveRecord::Migration
  def self.up
    create_table :press_stories do |t|
      t.string :title
      t.text :description
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :press_stories
  end
end
