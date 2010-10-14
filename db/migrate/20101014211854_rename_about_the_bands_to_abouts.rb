class RenameAboutTheBandsToAbouts < ActiveRecord::Migration
  def self.up
    rename_table :about_the_bands, :abouts
  end

  def self.down
    rename_table :abouts, :about_the_bands
  end
end
