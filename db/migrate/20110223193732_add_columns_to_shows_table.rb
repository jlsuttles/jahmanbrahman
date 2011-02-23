class AddColumnsToShowsTable < ActiveRecord::Migration
  def self.up
    add_column :shows, :venue_name, :string
    add_column :shows, :city, :string
    add_column :shows, :state, :string
  end

  def self.down
    remove_column :shows, :state
    remove_column :shows, :city
    remove_column :shows, :venue_name
  end
end
