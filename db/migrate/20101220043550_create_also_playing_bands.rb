class CreateAlsoPlayingBands < ActiveRecord::Migration
  def self.up
    create_table :also_playing_bands do |t|
      t.integer :band_id
      t.integer :show_id
      t.time    :time

      t.timestamps
    end
  end

  def self.down
    drop_table :also_playing_bands
  end
end
