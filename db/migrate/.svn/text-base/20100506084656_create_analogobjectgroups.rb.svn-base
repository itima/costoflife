class CreateAnalogobjectgroups < ActiveRecord::Migration
  def self.up
    create_table :analogobjectgroups do |t|
      t.string :analogobjectgroupid
      t.references :analogobjectgroup
      t.references :objectgroup
      t.string :objectgroupid
      t.string :nestedgroupid
      t.references :nestedgroup
      t.integer :relationstype

      t.timestamps
    end
  end

  def self.down
    drop_table :analogobjectgroups
  end
end
