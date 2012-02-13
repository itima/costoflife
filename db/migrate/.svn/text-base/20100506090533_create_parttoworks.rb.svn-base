class CreateParttoworks < ActiveRecord::Migration
  def self.up
    create_table :parttoworks do |t|
      t.string :parttoworkid
      t.string :partid
      t.references :part
      t.string :completedworkid
      t.references :completedwork
      t.float :price

      t.timestamps
    end
  end

  def self.down
    drop_table :parttoworks
  end
end
