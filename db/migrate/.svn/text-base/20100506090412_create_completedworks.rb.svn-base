class CreateCompletedworks < ActiveRecord::Migration
  def self.up
    create_table :completedworks do |t|
      t.string :completedworkid
      t.string :serviceid
      t.references :service
      t.string :objectintheprocessionid
      t.references :objectintheprocession
      t.string :routineid
      t.references :routine
      t.string :title
      t.timestamp :dtbegin
      t.timestamp :dtend
      t.float :price
      t.integer :mileage
     #  t.references :objectgroup
#       t.references :objecttype
#       t.string :objectgroupid
#       t.string :objecttypeid
      t.timestamps
    end
  end

  def self.down
    drop_table :completedworks
  end
end
