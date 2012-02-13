class CreateParametertoobjectgroups < ActiveRecord::Migration
  def self.up
    create_table :parametertoobjectgroups do |t|
      t.string :parametertoobjectgroupid
      t.string :parameterid
      t.string :objectgroupid
      t.references :parameter
      t.references :objectgroup
      t.string :valuestring
      t.float :valuenumber
      t.boolean :valueboolean

      t.timestamps
    end
  end

  def self.down
    drop_table :parametertoobjectgroups
  end
end
