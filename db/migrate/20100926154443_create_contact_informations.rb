class CreateContactInformations < ActiveRecord::Migration
  def self.up
    create_table :contact_informations do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :contact_informations
  end
end
