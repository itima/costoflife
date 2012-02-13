class CreateParttoroutines < ActiveRecord::Migration
  def self.up
    create_table :parttoroutines do |t|
      t.string :parttoroutineid
      t.string :partid
      t.references :part
      t.string :routineid
      t.references :routine

      t.timestamps
    end
  end

  def self.down
    drop_table :parttoroutines
  end
end
