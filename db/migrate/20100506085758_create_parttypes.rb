class CreateParttypes < ActiveRecord::Migration
  def self.up
    create_table :parttypes do |t|
      t.string :parttypeid
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :parttypes
  end
end
