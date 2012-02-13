class CreateObjectgroups < ActiveRecord::Migration
  def self.up
    create_table :objectgroups do |t|
      t.string :objectgroupid
      t.string :parentgroupid
      t.integer :parent_id
      t.integer :position
      t.string :title
      t.date :dtbegin
      t.date :dtend
      t.integer :sortorder

      t.timestamps
    end
  end

  def self.down
    drop_table :objectgroups
  end
end
