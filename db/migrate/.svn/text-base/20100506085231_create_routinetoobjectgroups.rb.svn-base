class CreateRoutinetoobjectgroups < ActiveRecord::Migration
  def self.up
    create_table :routinetoobjectgroups do |t|
      t.string :routineid
      t.references :routine
      t.string :objectgroupid
      t.references :objectgroup

      t.timestamps
    end
  end

  def self.down
    drop_table :routinetoobjectgroups
  end
end
