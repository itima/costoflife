class CreateParts < ActiveRecord::Migration
  def self.up
    create_table :parts do |t|
      t.string :partid
      t.string :parttypeid
      t.references :parttype
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :parts
  end
end
