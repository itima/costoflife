class CreateObjectgrouptoobjectgroups < ActiveRecord::Migration
  def self.up
    create_table :objectgrouptoobjectgroups do |t|
      t.references :parentgroup
      t.string :parentgroupid
      t.references :objectgroup
      t.string :objectgroupid
      t.integer :sortorder

      t.timestamps
    end
  end

  def self.down
    drop_table :objectgrouptoobjectgroups
  end
end
