class CreateAboutPhotos < ActiveRecord::Migration
  def self.up
    create_table :about_photos do |t|
      t.integer :about_id
      t.integer :photo_id

      t.timestamps
    end
  end

  def self.down
    drop_table :about_photos
  end
end
