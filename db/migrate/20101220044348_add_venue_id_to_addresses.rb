class AddVenueIdToAddresses < ActiveRecord::Migration
  def self.up
    add_column :addresses, :venue_id, :integer
  end

  def self.down
    remove_column :shows, :venue_id
  end
end
