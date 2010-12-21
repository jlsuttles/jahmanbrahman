class CreateAboutLinks < ActiveRecord::Migration
  def self.up
    create_table :about_links do |t|
      t.integer :about_id
      t.integer :link_id

      t.timestamps
    end
  end

  def self.down
    drop_table :about_links
  end
end
