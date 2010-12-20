class GiveShowsAMakeOver < ActiveRecord::Migration
  def self.up
    remove_column :shows, :date
    remove_column :shows, :time
    rename_column :shows, :description, :note
    rename_column :shows, :title, :name
    add_column    :shows, :datetime, :datetime
    add_column    :shows, :ages, :string
  end

  def self.down
    remove_column :shows, :ages
    remove_column :shows, :datetime
    rename_column :shows, :name, :title
    rename_column :shows, :note, :description
    add_column :shows, :time
    add_column :shows, :date
  end
end
