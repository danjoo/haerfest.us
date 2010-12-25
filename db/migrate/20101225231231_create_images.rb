class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :style
      t.string :photo_type
      t.string :path

      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
