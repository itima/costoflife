class CreateParametertoobjectintheprocessions < ActiveRecord::Migration
  def self.up
    create_table :parametertoobjectintheprocessions do |t|
      t.string :parametertoobjectintheprocessionid
      t.string :parameterid
      t.references :parameter
      t.string :objectintheprocessionid
      t.references :objectintheprocession
      t.string :valuestring
      t.float :valuenumber
      t.boolean :valueboolean

      t.timestamps
    end
  end

  def self.down
    drop_table :parametertoobjectintheprocessions
  end
end
