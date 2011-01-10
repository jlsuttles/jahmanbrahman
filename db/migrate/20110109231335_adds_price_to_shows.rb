class AddsPriceToShows < ActiveRecord::Migration
  def self.up
    add_column :shows, :price, :integer, :precision => 8, :scale => 2
  end

  def self.down
    remove_column :shows, :price
  end
end
