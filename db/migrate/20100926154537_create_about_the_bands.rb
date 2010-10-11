class CreateAboutTheBands < ActiveRecord::Migration
  def self.up
    create_table :about_the_bands do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :about_the_bands
  end
end
