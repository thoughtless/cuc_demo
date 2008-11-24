class CreatePosties < ActiveRecord::Migration
  def self.up
    create_table :posties do |t|
      t.string :name
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :posties
  end
end
