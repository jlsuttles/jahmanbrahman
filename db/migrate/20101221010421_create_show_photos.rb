class CreateShowPhotos < ActiveRecord::Migration
  def self.up
    create_table :show_photos do |t|
      t.integer :show_id
      t.integer :photo_id

      t.timestamps
    end
  end

  def self.down
    drop_table :show_photos
  end
end
