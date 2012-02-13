class CreateObjectintheprocessions < ActiveRecord::Migration
  def self.up
    create_table :objectintheprocessions do |t|
      t.string :objectintheprocessionid
      t.string :objectgroupid
      t.references :objectgroup
      t.string :objecttypeid
      t.references :objecttype
      t.string :title
      t.integer :sortorder

      t.timestamps
    end
  end

  def self.down
    drop_table :objectintheprocessions
  end
end
